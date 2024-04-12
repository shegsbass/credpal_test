import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    this.activeColor = const Color(0x26FE2B5E),
    required this.textColor,
    required this.onTap,
    this.active = true,
    required this.verValue,
    required this.horValue,
    this.assetIcon,
    this.inactiveBackgroundColor = const Color(0xFFE3E6EC),
    this.inactiveForegroundColor = const Color(0xFFB0B9CA),
    this.inactiveBorderColor = const Color(0xFFB0B9CA),
  }) : super(key: key);

  final String text;
  final Color activeColor;
  final Color textColor;
  final VoidCallback? onTap;
  final bool active;
  final double verValue;
  final double horValue;
  final String? assetIcon;
  final Color? inactiveBackgroundColor,
      inactiveForegroundColor,
      inactiveBorderColor;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: ShapeDecoration(
          color: active ? activeColor : inactiveBackgroundColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: verValue, horizontal: horValue),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              if (assetIcon != null && assetIcon!.isNotEmpty)
                SizedBox(width: 8),
              if (assetIcon != null && assetIcon!.isNotEmpty)
                Image.asset(assetIcon!, height: 24, width: 24,),
            ],
          ),
        ),
      ),
    );
  }
}
