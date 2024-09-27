import 'package:flutter/material.dart';
import '../main.dart';  // Import the file where MyHomePage is defined
import '../login_page.dart';  // Import the file where LoginScreen is defined
import '../service_page.dart';  // Import the file where ServiceScreen is defined
import '../contact_page.dart';  // Import the Contact page


// Define a common AppBar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle commonStyle = const TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Utile Home Page')),
              );
            },
            child: Text("Utile", style: commonStyle),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ServiceScreen()),
              );
            },
            child: Text("Services", style: commonStyle),
          ),
          TextButton(
            onPressed: () {
               Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ContactPage()),
               );
             },
             child: Text("Contact", style: commonStyle),
          ),

          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            child: Text("Login", style: commonStyle),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// Define a common gradient background container
class BackgroundContainer extends StatelessWidget {
  final Widget child;

  const BackgroundContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: SweepGradient(
          center: FractionalOffset.center,
          colors: [
            Color.fromARGB(255, 7, 29, 61),
            Color.fromARGB(255, 42, 70, 92),
          ],
          stops: [0.3, 1.0],
        ),
      ),
      child: child,
    );
  }
}


class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, // Ensure full-screen width
      color: Colors.black.withOpacity(0.8), // Adjust background color for contrast
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8), // Adjust padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Push elements to opposite sides
        children: [
          // Left: Social profile buttons
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.email, color: Colors.white),
                onPressed: () {
                  // Add functionality for contacting via email
                },
              ),
              IconButton(
                icon: const Icon(Icons.facebook, color: Colors.white),
                onPressed: () {
                  // Add functionality for social media links
                },
              ),
              IconButton(
                icon: const Icon(Icons.linked_camera, color: Colors.white),
                onPressed: () {
                  // Add functionality for LinkedIn or other social networks
                },
              ),
            ],
          ),

          // Right: Copyright text
          const Text(
            '© 2024 Utile App - All Rights Reserved',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
