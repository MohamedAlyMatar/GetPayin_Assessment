import 'package:flutter/material.dart';
import 'package:pay_in_app/src/core/widgets/display_num.dart';

class InOutComesCard extends StatelessWidget {
  const InOutComesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(
            Icons.arrow_downward,
            color: Colors.green,
          ),
          Column(
            children: [
              SizedBox(height: 8.0),
              Text(
                'Income',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 8.0),
              NumberDisplay(
                number: 20000.00,
              ),
            ],
          ),
          Container(
            width: 1.0,
            height: 60.0,
            color: Colors.grey,
          ),
          const Icon(
            Icons.arrow_upward,
            color: Colors.red,
          ),
          Column(
            children: [
              SizedBox(height: 8.0),
              Text(
                'Outcome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 8.0),
              NumberDisplay(number: 17000.00),
            ],
          ),
        ],
      ),
    );
  }
}
