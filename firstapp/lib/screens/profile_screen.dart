import 'package:flutter/material.dart';
import './contact_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            // Circular profile picture (Task Requirement)
            const CircleAvatar(
              radius: 60,
              // Use NetworkImage for a placeholder, or AssetImage if you have one
              backgroundImage: NetworkImage('../images/profile.png'),
            ),
            const SizedBox(height: 10),
            // Name (Task Requirement)
            const Text(
              'Naeem Abbas',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Profession (Task Requirement)
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Divider(),
            ),
            // Short bio (Task Requirement)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Passionate Web r developer with a focus on clean code and efficient UI/UX design. Always learning new technologies.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Divider(),
            ),
            
            // Contact details in a card layout using the custom widget (Task Requirement)
            const ContactCard(
              icon: Icons.email,
              title: 'Email',
              subtitle: 'naeemqurashii674@gmail.com',
            ),
            const ContactCard(
              icon: Icons.phone,
              title: 'Phone',
              subtitle: '+9235555...',
            ),
            const ContactCard(
              icon: Icons.location_on,
              title: 'Location',
              subtitle: ' Giglit',
            ),
            
            const SizedBox(height: 20),
            
            // Social media icons using IconButton (Task Requirement)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.link, color: Colors.blue), // Placeholder for LinkedIn
                  iconSize: 35.0,
                  onPressed: () { /* Handle LinkedIn navigation */ },
                ),
                IconButton(
                  icon: const Icon(Icons.code, color: Colors.black), // Placeholder for GitHub
                  iconSize: 35.0,
                  onPressed: () { /* Handle GitHub navigation */ },
                ),
                IconButton(
                  icon: const Icon(Icons.message, color: Colors.lightBlue), // Placeholder for Twitter/X
                  iconSize: 35.0,
                  onPressed: () { /* Handle Twitter navigation */ },
                ),
              ],
            ),
            const SizedBox(height: 80), // To make room for the FAB
          ],
        ),
      ),
      // Floating action button (FAB) (Task Requirement)
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigates to the About Me page (Task Requirement)
          Navigator.pushNamed(context, '/about');
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.info_outline),
      ),
    );
  }
}