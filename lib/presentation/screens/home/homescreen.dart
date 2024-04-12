import 'package:credpal_test/presentation/components/text/text_16_size.dart';
import 'package:credpal_test/presentation/const/app_colors.dart';
import 'package:credpal_test/presentation/screens/home/helper_widgets/accountCard.dart';
import 'package:credpal_test/presentation/screens/home/helper_widgets/credit_card.dart';
import 'package:credpal_test/presentation/screens/home/helper_widgets/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import 'helper_widgets/reusable_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileHeader(username: 'Olorunfemi'),
                SizedBox(height: 12),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      AccountCard(
                        cashBalance: 'N680,100',
                        bankName: 'Wema Bank',
                        accountNumber: '8550001259',
                        shapeDecorationColor: Color(0xFF274FED),
                      ),
                      SizedBox(width: 12),
                      AccountCard(
                        cashBalance: 'N140,000',
                        bankName: 'Restofit Bank',
                        accountNumber: '9876543210',
                        shapeDecorationColor: Color(0xFF5353BB),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 31),
                Row(
                  children: [
                    ReusableActionsCard(iconPath: 'assets/icons/transfer_icon.png', title: 'Transfer',),
                    SizedBox(width: 15,),
                    ReusableActionsCard(iconPath: 'assets/icons/airtime.png', title: 'Airtime', ),
                    SizedBox(width: 15,),
                    ReusableActionsCard(iconPath: 'assets/icons/flight.png', title: 'Flight', ),
                    SizedBox(width: 15,),
                    ReusableActionsCard(iconPath: 'assets/icons/share.png', title: 'Share',),
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: ShapeDecoration(
                    color: Color(0xFFF1F3FE),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.error_outline),
                      SizedBox(width: 4,),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Save & invest',
                              style: TextStyle(
                                color: Color(0xFF274FED),
                                fontSize: 10,
                                fontFamily: 'Axiforma',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: ' more to unlock higher credit limit & 0% interest',
                              style: TextStyle(
                                color: Color(0xFF222222),
                                fontSize: 10,
                                fontFamily: 'Axiforma',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    CreditCardWidget(
                      percentage: '0',
                      cardType: 'Credit Card',
                      additionalInfo: 'Quick credit anytime',
                      imagePath: 'assets/images/your_image.png',
                      shapeDecorationColor: Color(0xFF4D70FC),
                    ),
                    SizedBox(width: 15,),
                    CreditCardWidget(
                      percentage: '0',
                      cardType: 'Credit Card',
                      additionalInfo: 'Quick credit anytime',
                      imagePath: 'assets/images/your_image.png',
                      shapeDecorationColor: Color(0xFF8044FD),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    CreditCardWidget(
                      percentage: '0',
                      cardType: 'Credit Card',
                      additionalInfo: 'Quick credit anytime',
                      imagePath: 'assets/images/your_image.png',
                      shapeDecorationColor: Color(0xFF4EB5FF),
                    ),
                    SizedBox(width: 15,),
                    CreditCardWidget(
                      percentage: '0',
                      cardType: 'Credit Card',
                      additionalInfo: 'Quick credit anytime',
                      imagePath: 'assets/images/your_image.png',
                      shapeDecorationColor: Color(0xFF7F8CFF),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  width: 365,
                  height: 70,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(1.00, 0.04),
                      end: Alignment(-1, -0.04),
                      colors: [Color(0xFF274161), Color(0xFF57799B), Color(0xFF83B4D8)],
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
