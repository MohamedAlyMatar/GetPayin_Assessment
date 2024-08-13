import 'package:flutter/material.dart';

class ElevButton extends StatelessWidget {
  const ElevButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.all(10),
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
