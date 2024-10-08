import 'package:flutter/material.dart';
import 'common/common_widgets.dart'; // Import the common_widgets.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTILE Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Utile Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(), // Use the custom AppBar
      body: BackgroundContainer( // Use the custom background
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space content and footer
          children: [
            Expanded(
              child: Center( // Keep the content centered
                child: Text(
                  'Welcome to Utile',
                  style: TextStyle(color: Colors.white, fontSize: 41),
                ),
              ),
            ),
            Footer(), // Add the footer at the bottom
          ],
        ),
      ),
    );
  }
}
