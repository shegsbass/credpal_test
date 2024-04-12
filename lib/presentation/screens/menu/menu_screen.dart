import 'package:credpal_test/presentation/components/buttons.dart';
import 'package:credpal_test/presentation/screens/menu/helper_widget/menu_items.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 19),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      color: Color(0xFF242D4F),
                      fontSize: 24,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),

                MenuItems(
                    text: 'Edit Profile',
                    iconPath: 'assets/icons/user.png',
                    ontap: (){}
                ),

                MenuItems(
                    text: 'My Cards',
                    iconPath: 'assets/icons/user.png',
                    ontap: (){}
                ),

                MenuItems(
                    text: 'Virtual Cards',
                    iconPath: 'assets/icons/user.png',
                    ontap: (){}
                ),


                MenuItems(
                    text: 'Subscriptions',
                    iconPath: 'assets/icons/user.png',
                    ontap: (){}
                ),

                MenuItems(
                    text: 'Rewards and Cashbacks',
                    iconPath: 'assets/icons/user.png',
                    ontap: (){}
                ),


                MenuItems(
                    text: 'FAQs and support',
                    iconPath: 'assets/icons/user.png',
                    ontap: (){}
                ),

                MenuItems(
                    text: 'About us',
                    iconPath: 'assets/icons/user.png',
                    ontap: (){}
                ),


                MenuItems(
                    text: 'Settings',
                    iconPath: 'assets/icons/user.png',
                    ontap: (){}
                ),


                SizedBox(height: 100,),
                
                PrimaryButton(
                    text: 'Sign Out',
                    textColor: Color(0xFFFF5959),
                    assetIcon: 'assets/icons/logout.png',
                    onTap: (){},
                    verValue: 13,
                    horValue: 120
                )
              ],
            ),
          )
      ),
    );
  }
}
