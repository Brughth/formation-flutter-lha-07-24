import 'package:flutter/material.dart';
import 'package:flutter_application_2/bmi_calculator_screen.dart';
import 'package:flutter_application_2/counter_screen.dart';
import 'package:flutter_application_2/facebook_screen.dart';
import 'package:flutter_application_2/home_screen.dart';
import 'package:flutter_application_2/instagram_screem.dart';
import 'package:flutter_application_2/post/presentation/pages/post_list_screen.dart';
import 'package:flutter_application_2/universities/presentation/pages/university_list_screen.dart';

class ApplicationScreen extends StatelessWidget {
  const ApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formation Flutter"),
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
          ),
          const Divider(),
          ListTile(
            title: const Text("Counter App"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const CounterScreen();
                  },
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text("BMI Calculator"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const BmiCalculatorScreen();
                  },
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text("Universities"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const UniversityListScreen();
                  },
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text("Post"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const PostListScreen();
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
