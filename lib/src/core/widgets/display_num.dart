import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NumberDisplay extends StatelessWidget {
  final double number;
  final double size;
  final Color color;

  NumberDisplay(
      {required this.number, this.size = 20.0, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.currency(
      locale: 'en_US',
      symbol: '',
      decimalDigits: 2,
    );

    String formattedNumber = formatter.format(number);

    return Text(
      '\$ $formattedNumber',
      style: TextStyle(fontSize: size, color: color),
    );
  }
}
