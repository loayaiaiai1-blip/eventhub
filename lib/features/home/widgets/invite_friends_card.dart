import 'package:eventhub/components/buttons/mainbutton.dart';
import 'package:eventhub/core/constants/app_images.dart';
import 'package:eventhub/core/utils/colors.dart';
import 'package:eventhub/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InviteFriendsCard extends StatelessWidget {
  const InviteFriendsCard({super.key, required this.onTap});

  final VoidCallback onTap;

  static const _cardColor = Color(0xFFD9F7FA);
  static const _buttonColor = Color(0xFF00F8FF);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: _cardColor,
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 127,
          width: double.infinity,
          child: Stack(
            children: [
              // Hand + present illustration
              Positioned(
                right: 0,
                bottom: 0,
                top: 0,
                child: Image.asset(
                  AppImages.inviteYourFriends,
                  fit: BoxFit.contain,
                ),
              ),
              // Text + button
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Invite your friends',
                      style: TextStyles.styleSize18Bold(
                        color: AppColors.darkColor,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Get \$20 for ticket',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.darkColor.withValues(alpha: 0.8),
                      ),
                    ),
                    const SizedBox(height: 12),
                    MainButton(
                      text: 'INVITE',
                      onPressed: onTap,
                      height: 35,
                      width: 100,
                      bgColor: _buttonColor,
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}