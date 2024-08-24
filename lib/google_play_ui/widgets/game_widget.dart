import 'package:flutter/material.dart';

import 'application_widget.dart';

class GameWidget extends StatelessWidget {
  final Color color;
  const GameWidget({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: color,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            flex: 4,
            child: ApplicationWidget(color: color),
          )
        ],
      ),
    );
  }
}
