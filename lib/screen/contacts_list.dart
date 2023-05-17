import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contacts'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView(
          children: const [
            Card(
              child: ListTile(
                title: Text(
                  'Marcos',
                  style: TextStyle(fontSize: 24.0),
                ),
                subtitle: Text(
                  '1000',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ));
  }
}
