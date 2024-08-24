import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_application_2/google_play_ui/widgets/for_you_widget.dart';

class GooglePlayHomeScreen extends StatelessWidget {
  const GooglePlayHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(),
          ),
          actions: const [
            badges.Badge(
              badgeContent: Text('3'),
              child: Icon(Icons.notifications),
            ),
            SizedBox(width: 20),
            CircleAvatar(
              backgroundColor: Colors.purple,
            ),
            SizedBox(width: 10),
          ],
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                text: "For you",
              ),
              Tab(
                text: "Top charts",
              ),
              Tab(
                text: "Kids",
              ),
              Tab(
                text: "Primium",
              ),
              Tab(
                text: "Categories",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            ForYouWidget(),
            Center(child: Text("Top chartts")),
            Center(child: Text("Kids")),
            Center(child: Text("Primium")),
            Center(child: Text("Categories")),
          ],
        ),
      ),
    );
  }
}
