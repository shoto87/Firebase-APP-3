import 'package:firebase_app_3/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: const Color(0xFF7ED957), // Button color
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignInScreen()));
            },
          ),
          const SizedBox(width: 16), // Add space between icons
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // Navigate to profile page
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const ProfileScreen()), // Replace with actual profile screen
              // );
            },
          ),
          const SizedBox(width: 16), // Add space between icons
        ],
      ),
      body: Container(
        color: const Color(0xFFCCFFB6), // Background color
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Sample section for diet plan
            Card(
              elevation: 4.0,
              margin: const EdgeInsets.only(bottom: 16.0),
              child: ListTile(
                leading: Icon(Icons.fastfood, color: const Color(0xFF7ED957)),
                title: const Text('Diet Plan'),
                subtitle: const Text('View and manage your daily diet plan.'),
                onTap: () {
                  // Navigate to diet plan screen
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const DietPlanScreen()), // Replace with actual diet plan screen
                  // );
                },
              ),
            ),

            // Sample section for progress tracking
            Card(
              elevation: 4.0,
              margin: const EdgeInsets.only(bottom: 16.0),
              child: ListTile(
                leading: Icon(Icons.show_chart, color: const Color(0xFF7ED957)),
                title: const Text('Progress Tracking'),
                subtitle: const Text('Track your progress and achievements.'),
                onTap: () {
                  // Navigate to progress tracking screen
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const ProgressTrackingScreen()), // Replace with actual progress tracking screen
                  // );
                },
              ),
            ),

            // Sample section for tips and articles
            Card(
              elevation: 4.0,
              margin: const EdgeInsets.only(bottom: 16.0),
              child: ListTile(
                leading: Icon(Icons.article, color: const Color(0xFF7ED957)),
                title: const Text('Tips & Articles'),
                subtitle:
                    const Text('Read tips and articles on healthy living.'),
                onTap: () {
                  // Navigate to tips and articles screen
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const TipsArticlesScreen()), // Replace with actual tips and articles screen
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
