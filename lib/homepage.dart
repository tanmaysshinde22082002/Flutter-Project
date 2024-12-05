import 'package:flutter/material.dart';
import 'package:lifelink_solutions/main.dart';
import 'package:lifelink_solutions/profilepage.dart';

class Home extends StatelessWidget {
  final String userName = "Tanmay";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                // Ensure ProfilePage is imported and this correctly redirects
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[200],
                child: Icon(Icons.person, color: Colors.black),
              ),
            ),





            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "Good Morning!",
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                ),
                Text(
                    userName,
                  style: TextStyle(color: Colors.black, fontSize: 23),
                ),
              ],
            )
          ],
        ),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Company Section
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      child: Image.asset('assets/logo.PNG'),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "LifeLink Solutions",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Welcome to **Lifelink Solutions**, where innovation meets healthcare. Our advanced system integrates CGM sensors and the Lifelink Smart Ring, equipped with SpO2 and PPG sensors, for real-time health monitoring. With seamless connectivity to healthcare experts, we empower you to track vital parameters and ensure timely support for better health management."
                                ,
                            style: TextStyle(
                                fontSize: 14, color: Colors.blueGrey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            // Know Your Section
            Text(
              "Know Your",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildFeatureCard("Sugar", Icons.medical_information),
                _buildFeatureCard("Blood Pressure", Icons.bloodtype),
                _buildFeatureCard("Oxygen", Icons.water_drop),
                _buildFeatureCard("Health Score", Icons.health_and_safety),
              ],
            ),

            SizedBox(height: 20),

            // Health Score Section
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Health Score",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "April 23, 2024",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "392/500",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.health_and_safety,
                            color: Colors.green, size: 30),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Sugar: 110"),
                        Text("BP: 72/53"),
                        Text("Oxygen: 96"),
                      ],
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Center(
              child: Text(
                "Join us to get whole-body insights!",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Health"),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: "Reports"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Know Us"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }

  Widget _buildFeatureCard(String label, IconData icon) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.teal.withOpacity(0.2),
          child: Icon(icon, color: Colors.teal),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
