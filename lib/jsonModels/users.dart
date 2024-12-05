class Users {
  final int? userId;
  final String userName;
  final String userPassword;

  Users({this.userId, required this.userName, required this.userPassword});

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'userName': userName,
      'userPassword': userPassword,
    };
  }

  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      userId: map['userId'],
      userName: map['userName'],
      userPassword: map['userPassword'],
    );
  }
}
