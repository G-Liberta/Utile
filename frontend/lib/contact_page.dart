import 'package:flutter/material.dart';
import 'common/common_widgets.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: BackgroundContainer(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.55, // Adjust the width to match smaller devices
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white10, // White background for the form
              borderRadius: BorderRadius.circular(20), // Rounded corners
              border: Border.all(color: Colors.white.withOpacity(0.5)), // Soft white border to match the page
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 4), // Adds depth
                ),
              ],
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Contact Us',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Email field
                  TextFormField(
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: const TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty || !value.contains('@')) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  // Message field
                  TextFormField(
                    style: const TextStyle(color: Colors.black),
                    maxLines: 5,
                    decoration: InputDecoration(
                      labelText: 'Message',
                      labelStyle: const TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a message';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  // Submit Button
                  OutlinedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() == true) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Message Sent!')),
                        );
                      }
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white.withOpacity(0.8)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                    child: const Text(
                      'Send',
                      style: TextStyle(fontSize: 18, color: Colors.white), // Text color set to white
                  ),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
