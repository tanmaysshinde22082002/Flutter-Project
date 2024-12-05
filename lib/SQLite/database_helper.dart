import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:lifelink_solutions/jsonModels/users.dart';

class DatabaseHelper {
  final String databaseName = "auth.db";
  final String userTable = "users";

  // SQL to create the users table
  final String userTableCreationQuery =
      "CREATE TABLE users (userId INTEGER PRIMARY KEY AUTOINCREMENT, userName TEXT UNIQUE, userPassword TEXT)";

  // Initialize the database
  Future<Database> initDB() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, databaseName);

    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(userTableCreationQuery);
      },
    );
  }

  // Login function
  Future<bool> login(Users user) async {
    final Database db = await initDB();
    var result = await db.query(
      userTable,
      where: 'userName = ? AND userPassword = ?',
      whereArgs: [user.userName, user.userPassword],
    );
    return result.isNotEmpty;
  }

  // Sign up function
  Future<int> signup(Users user) async {
    final Database db = await initDB();
    try {
      return await db.insert(userTable, user.toMap());
    } catch (e) {
      debugPrint("Error during sign up: $e");
      return -1; // Return -1 in case of an error (e.g., duplicate username)
    }
  }
}
