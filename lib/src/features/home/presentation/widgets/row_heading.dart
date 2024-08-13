import 'package:flutter/material.dart';

class RowHeading extends StatelessWidget {
  final String title;
  String? seeAll;
  Widget? icon;
  RowHeading({super.key, required this.title, this.seeAll, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
          if (seeAll != null)
            const Text(
              "See all",
              style: TextStyle(color: Colors.blueAccent, fontSize: 17),
            ),
          if (icon != null)
            TextButton(
              onPressed: () {},
              child: const Icon(Icons.tune_rounded),
            ),
        ],
      ),
    );
  }
}
