import 'package:flutter/material.dart';
import 'common/common_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
      body: BackgroundContainer(
        child: Center(
          child: Text(
            'Login Page',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
