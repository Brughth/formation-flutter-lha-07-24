import 'package:flutter/material.dart';
import 'package:flutter_application_2/facebook_screen.dart';
import 'package:flutter_application_2/home_screen.dart';
import 'package:flutter_application_2/instagram_screem.dart';

class ApplicationScreen extends StatelessWidget {
  const ApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formation Flutter LHA"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("WhatsApp"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const HomeScreen();
                  },
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text("Facebook"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const FacebookScreen();
                  },
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: Text("Instagram"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const InstagramScreen();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
