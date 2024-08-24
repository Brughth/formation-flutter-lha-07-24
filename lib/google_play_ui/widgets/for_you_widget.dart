import 'package:flutter/material.dart';
import 'package:flutter_application_2/google_play_ui/widgets/application_widget.dart';
import 'package:flutter_application_2/google_play_ui/widgets/game_widget.dart';

class ForYouWidget extends StatelessWidget {
  const ForYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommended for yor",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(15, (e) {
              return Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                child: GameWidget(color: Colors.primaries[e]),
              );
            }),
          ),
        ),
        const SizedBox(height: 20),
        ...List.generate(10, (e) {
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 8,
            ),
            child: ApplicationWidget(
              color: Colors.primaries[e],
              step: 2,
            ),
          );
        })
      ],
    );
  }
}
