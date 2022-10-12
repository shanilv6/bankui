import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Transactions extends StatelessWidget {
  final text1;
  final text2;
  final text3;
  final text4;

  const Transactions(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.red),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18, top: 8),
          child: Container(
            height: 100,
            width: 365,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(12),topRight: Radius.circular(12)), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text1),
                      Text(text2),
                      Text(text3),
                    ],
                  ),
                 
                  Text(text4),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
