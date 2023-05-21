import 'package:flutter/material.dart';

import '../models/contact.dart';
import 'contact_form.dart';

class ContactList extends StatelessWidget {
  ContactList({super.key});

  final List<Contact> contacts = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    contacts.add(Contact(0, "Marcos", 1000));
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contacts'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final Contact contact = contacts[index];
            return _ContactItem(contact);
          },
          itemCount: contacts.length,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(
                  MaterialPageRoute(builder: (context) => const ContactForm()),
                )
                .then((newContact) => debugPrint(newContact.toString()));
          },
          child: const Icon(Icons.add),
        ));
  }
}

class _ContactItem extends StatelessWidget {
  final Contact contact;

  const _ContactItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          contact.name,
          style: const TextStyle(fontSize: 24.0),
        ),
        subtitle: Text(
          contact.accountNumber.toString(),
          style: const TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
