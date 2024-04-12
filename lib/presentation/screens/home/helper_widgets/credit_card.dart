import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  final String percentage;
  final String cardType;
  final String additionalInfo;
  final String imagePath;
  final Color shapeDecorationColor;

  const CreditCardWidget({
    required this.percentage,
    required this.cardType,
    required this.additionalInfo,
    required this.imagePath,
    required this.shapeDecorationColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 135,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: shapeDecorationColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 16,
            top: 17,
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: 0.95,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '$percentage%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Axiforma',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: ' \n',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Axiforma',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: cardType,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Axiforma',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 104,
            child: Opacity(
              opacity: 0.70,
              child: Text(
                additionalInfo,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontFamily: 'Axiforma',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 58,
            child: Opacity(
              opacity: 0.70,
              child: Text(
                '+ increase credit limit',
                style: TextStyle(
                  color: Color(0xFFC2FFD3),
                  fontSize: 10,
                  fontFamily: 'Axiforma',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 113,
            top: 11,
            child: Container(
              width: 59,
              height: 55,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  // You can add your image widget here based on imagePath
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
