import 'package:flutter/material.dart';
import '../main.dart';  // Import the file where MyHomePage is defined
import '../login_page.dart';  // Import the file where LoginScreen is defined
import '../service_page.dart';  // Import the file where ServiceScreen is defined

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
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const ServiceScreen()),ModalRoute.withName('/'),
              );
            },
            child: Text("Services", style: commonStyle),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),ModalRoute.withName('/'),
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
