import 'package:flutter/material.dart';
import 'package:pay_in_app/src/core/widgets/display_num.dart';

class CreditCard extends StatelessWidget {
  final double balance;
  final String lastFourDigits;
  final String clientName;
  final String expDate;
  Color? cardColor;

  CreditCard({
    required this.balance,
    required this.lastFourDigits,
    required this.clientName,
    required this.expDate,
    this.cardColor = Colors.white, // Default color if not provided
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      margin: EdgeInsets.all(10),
      // padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        // margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      "Total Balance",
                      style: TextStyle(color: Colors.black54),
                    ),
                    subtitle: NumberDisplay(
                      number: balance,
                      color: Colors.black,
                    ),
                    trailing: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/4/41/Visa_Logo.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      "1234  ••••  ••••  $lastFourDigits",
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Name",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        clientName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Exp",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        expDate,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
