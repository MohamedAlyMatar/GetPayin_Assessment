import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            CircleAvatar(
              radius: 55,
              backgroundColor: Colors.grey.shade200,
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/imgs/fin.png"),
              ),
            ),
            // Positioned(
            //   bottom: 1,
            //   right: 1,
            //   child: Container(
            //     decoration: BoxDecoration(
            //         border: Border.all(
            //           width: 3,
            //           color: Colors.white,
            //         ),
            //         borderRadius: const BorderRadius.all(
            //           Radius.circular(
            //             50,
            //           ),
            //         ),
            //         color: Colors.white,
            //         boxShadow: [
            //           BoxShadow(
            //             offset: const Offset(2, 4),
            //             color: Colors.black.withOpacity(
            //               0.3,
            //             ),
            //             blurRadius: 3,
            //           ),
            //         ]),
            //     child: const Padding(
            //       padding: EdgeInsets.all(2.0),
            //       child: IconButton(
            //         icon: Icon(Icons.add_a_photo, color: Colors.black),
            //         onPressed: null,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ));
  }
}
