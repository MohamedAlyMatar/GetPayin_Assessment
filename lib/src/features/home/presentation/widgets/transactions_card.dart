import 'package:flutter/material.dart';
import 'package:pay_in_app/src/core/widgets/icon_container.dart';

class TransactionsCard extends StatelessWidget {
  String icon;
  final String title;
  final String subTitle;
  final String amount;
  final String type;

  TransactionsCard(
      {required this.icon,
      required this.title,
      required this.subTitle,
      required this.amount,
      required this.type});

  @override
  Widget build(BuildContext context) {
    IconContainer? tempIcon;
    //TODO: remove the below if condition and make it general with the IconContainer widget we made
    if (icon == "laptop") {
      tempIcon = IconContainer(icon: Icons.computer, color: Colors.yellow);
    } else if (icon == "shopping") {
      tempIcon =
          IconContainer(icon: Icons.shopping_bag, color: Colors.pinkAccent);
    } else if (icon == "visa") {
      tempIcon =
          IconContainer(icon: Icons.credit_card, color: Colors.greenAccent);
    } else if (icon == "save") {
      tempIcon = IconContainer(icon: Icons.download, color: Colors.blue);
    }

    Text mo;
    if (type == "Income") {
      mo = Text(
        "+\$$amount",
        style: const TextStyle(color: Colors.green, fontSize: 20),
      );
    } else {
      mo = Text(
        "-\$$amount",
        style: const TextStyle(color: Colors.red, fontSize: 20),
      );
    }

    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: tempIcon,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subTitle),
        trailing: mo,
      ),
    );
  }
}
