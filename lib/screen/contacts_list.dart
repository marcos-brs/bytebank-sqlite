import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacts')),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text('Marcos'),
              subtitle: Text('1000'),
            ),
          )
        ],
      ),
    );
  }
}
