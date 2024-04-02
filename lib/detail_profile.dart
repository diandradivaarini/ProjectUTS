import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailProfileScreen extends StatelessWidget {
  final Map<String, String> profile;

  DetailProfileScreen({required this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(profile['name']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(profile['image']!),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Name: ${profile['name']}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Date of Birth: ${profile['ttl']}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Address: ${profile['address']}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Phone: ${profile['phone']}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Email: ${profile['email']}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                String url = profile['github']!;
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text('GitHub'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                String url = 'mailto:${profile['email']}';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text('Email'),
            ),
          ],
        ),
      ),
    );
  }
}