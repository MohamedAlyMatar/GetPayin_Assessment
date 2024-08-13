import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: DottedBorder(
      borderType: BorderType.RRect,
      strokeWidth: 3,
      dashPattern: [10, 5],
      radius: const Radius.circular(10),
      child: Container(
        height: 180,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            margin: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 24,
            ),
          ),
        ]),
      ),
    ));
  }
}
