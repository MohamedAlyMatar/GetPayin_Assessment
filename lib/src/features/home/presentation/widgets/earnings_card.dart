import 'package:flutter/material.dart';
import 'package:pay_in_app/src/core/widgets/display_num.dart';

class EarningsCard extends StatelessWidget {
  final String title;
  final double amount;
  Color? cardColor = Colors.lightBlue;

  EarningsCard({required this.title, required this.amount, this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white70,
              child: Text("${title[0]}"),
            ),
            const SizedBox(height: 15),
            Text(title,
                style: const TextStyle(fontSize: 16, color: Colors.white)),
            NumberDisplay(number: amount)
          ],
        ),
      ),
    );
  }
}
