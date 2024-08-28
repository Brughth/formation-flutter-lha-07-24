import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/counter_with_cubic/logic/cubit/counter_cubit.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InstagramScreen extends StatelessWidget {
  const InstagramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              "samueletoo",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 18,
              ),
            ),
            SizedBox(width: 8),
            Icon(
              Icons.verified,
              color: Colors.blueAccent,
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.more_vert,
          ),
          SizedBox(width: 10)
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/lh.webp'),
                ),
                Column(
                  children: [
                    Text(
                      "1,323",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Posts",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "6.8M",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "29",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Samuel Eto'o",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const Text(
                  "public figure",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    text: "President of ",
                    children: [
                      TextSpan(
                        text: "@fecafootofficiel ",
                        style: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      ),
                      TextSpan(
                        text: "& ",
                      ),
                      TextSpan(
                        text: "@etoofoundation",
                        style: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      )
                    ],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.purple,
                      radius: 15,
                    ),
                    Text(""),
                  ],
                )
              ],
            ),
          ),
          Text(
            "${context.read<CounterCubit>().state.counter}",
            style: Theme.of(context).textTheme.displayLarge,
          )
        ],
      ),
    );
  }
}
