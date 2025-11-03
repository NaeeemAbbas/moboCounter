import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ContactCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    // Using Card, Padding, and Container widgets (UI Guideline)
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.blueAccent,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}