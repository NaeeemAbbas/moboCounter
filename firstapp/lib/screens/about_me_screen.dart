import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Example data
    final List<String> skills = ['Flutter', 'Dart', 'Firebase', 'REST APIs', 'UI/UX Design', 'Git'];
    final List<String> education = ['B.Sc. Computer Science - KIU University (2023-2027)'];
    final List<String> hobbies = ['Hiking', 'Reading Tech Blogs', 'Playing Guitar'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        backgroundColor: Colors.deepPurple,
        // The default AppBar already provides a Back button for navigation
      ),
      body: ListView( // Simple ListView (Task Requirement)
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          // Education Section
          _buildSectionTitle('Education 🎓'),
          ...education.map((item) => ListTile(
                leading: const Icon(Icons.school, color: Colors.deepPurple),
                title: Text(item),
              )).toList(),
          const Divider(),

          // Skills Section
          _buildSectionTitle('Skills 💻'),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
            child: Wrap( // Use Wrap widgets (Task Requirement)
              spacing: 8.0, // Gap between adjacent chips
              runSpacing: 4.0, // Gap between lines
              children: skills.map((skill) => Chip( // Use Chip widgets (Task Requirement)
                label: Text(skill),
                backgroundColor: Colors.deepPurple.shade50,
                labelStyle: const TextStyle(color: Colors.deepPurple),
                avatar: const Icon(Icons.check_circle_outline, size: 18, color: Colors.deepPurple),
              )).toList(),
            ),
          ),
          const Divider(),

          // Hobbies Section
          _buildSectionTitle('Hobbies 💡'),
          ...hobbies.map((item) => ListTile(
                leading: const Icon(Icons.favorite_border, color: Colors.deepPurple),
                title: Text(item),
              )).toList(),
        ],
      ),
    );
  }

  // Helper function for section titles
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}