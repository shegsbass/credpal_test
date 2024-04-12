import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key, required this.text, required this.iconPath, required this.ontap});

  final String text;
  final String iconPath;
  final Function()? ontap
  ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  height: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Stack(children: [
                          Image.asset(iconPath),
                        ]),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: SizedBox(
                          child: Text(
                            text,
                            style: TextStyle(
                              color: Color(0xFF111928),
                              fontSize: 16,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(),
              child: Stack(children: [
                Icon(IconsaxPlusBold.arrow_right),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
