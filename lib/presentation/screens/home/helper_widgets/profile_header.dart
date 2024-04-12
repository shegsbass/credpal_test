import 'package:credpal_test/presentation/components/text/text_16_size.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String username;

  const ProfileHeader({required this.username, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text16Size(
          text: 'Hi, $username',
        ),
        Row(
          children: [
            _buildIcon('assets/icons/question.png'),
            SizedBox(width: 8),
            _buildIcon('assets/icons/notification.png'),
          ],
        ),
      ],
    );
  }

  Widget _buildIcon(String imagePath) {
    return Container(
      width: 41,
      height: 41,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}