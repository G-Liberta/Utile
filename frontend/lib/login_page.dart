import 'package:flutter/material.dart';
import 'common/common_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: BackgroundContainer(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0), // Adds some padding around the fields
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 330, // Set the width of the email field
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.white24, // Adjust color for compatibility
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(color: Colors.white), // Adjusts input text color to white
                  ),
                ),
                const SizedBox(height: 20), // Space between fields
                Container(
                  width: 330, // Set the width of the password field
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.white24,
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 30), // Space before the login button
                OutlinedButton(
                  onPressed: () {
                    // Handle login action
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.white), // Border color set to white
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 18, color: Colors.white), // Text color set to white
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
