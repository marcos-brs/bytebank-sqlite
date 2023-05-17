import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New contact'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
