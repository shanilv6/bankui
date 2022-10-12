import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cards extends StatelessWidget {
  final pic;
  final text1;
  const Cards({super.key, required this.pic, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shadowColor:  Colors.grey.shade300,
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [Image(image: NetworkImage(pic),height: 60,),
            SizedBox(height: 5,),
            Text(text1,style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
