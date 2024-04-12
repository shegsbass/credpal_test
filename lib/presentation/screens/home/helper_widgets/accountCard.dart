import 'package:credpal_test/presentation/components/text/text_10_size.dart';
import 'package:credpal_test/presentation/components/text/text_13_size.dart';
import 'package:credpal_test/presentation/components/text/text_16_size.dart';
import 'package:credpal_test/presentation/const/app_colors.dart';
import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  final String cashBalance;
  final String bankName;
  final String accountNumber;
  final Color shapeDecorationColor;

  const AccountCard({
    required this.cashBalance,
    required this.bankName,
    required this.accountNumber,
    required this.shapeDecorationColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 19),
      decoration: ShapeDecoration(
        color: shapeDecorationColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F1111BC),
            blurRadius: 19,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.70,
            child: Text(
              'Cash Balance',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(
                opacity: 0.95,
                child: Text(
                  cashBalance,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  child: Text(
                    'Add Money',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bankName,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontFamily: 'Axiforma',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    accountNumber,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontFamily: 'Axiforma',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Text(
                '+20% interest',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontFamily: 'Axiforma',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}