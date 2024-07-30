import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Formation Flutter",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 26, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffe8661e),
        leading: const Icon(Icons.menu, color: Colors.white),
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 10,
            ),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 30,
            ),
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          for (int i = 0; i <= 15; i++)
            Padding(
              padding: const EdgeInsets.only(
                bottom: 16,
              ),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.primaries[i],
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Olice SONA",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "What is my name ?",
                        ),
                      ],
                    ),
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "17h04",
                        style: TextStyle(
                          color: Colors.primaries[i],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.primaries[i],
                          shape: BoxShape.circle,
                        ),
                        child: const Text(
                          "30",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
