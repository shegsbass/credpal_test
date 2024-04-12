import 'package:flutter/material.dart';

class ReusableActionsCard extends StatelessWidget{
  final String iconPath;
  final String title;

  ReusableActionsCard({required this.iconPath, required this.title,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: EdgeInsets.symmetric(horizontal: 19),
      decoration: ShapeDecoration(
        color: Color(0xFFF1F3FE),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(iconPath, height: 21, width: 21,),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF21243F),
              fontSize: 10,
              fontFamily: 'Axiforma',
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}