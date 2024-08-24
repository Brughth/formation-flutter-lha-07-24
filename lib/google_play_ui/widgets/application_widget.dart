import 'package:flutter/material.dart';

class ApplicationWidget extends StatelessWidget {
  const ApplicationWidget({
    super.key,
    required this.color,
    this.step = 4,
  });

  final Color color;
  final int step;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: step,
          child: Container(
            constraints: const BoxConstraints(
              minHeight: 80,
              maxHeight: 80,
            ),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Expanded(
          flex: 6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Neero Super App Neero Super App Neero Super App",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              Text("Finance . Argent"),
              Text("Neero Super App"),
            ],
          ),
        ),
      ],
    );
  }
}
