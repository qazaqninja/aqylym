import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/core/utils/constants/profile_constants.dart';
import 'package:aqylym/src/features/profile/profile_page.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String initials;
  final String name;

  const ProfileHeader({
    super.key,
    required this.initials,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: ProfileConstants.kAvatarSize,
          backgroundColor: AppColors.backgroundOfName,
          child: Text(
            initials,
            style: const TextStyle(
              fontFamily: 'SFUIDisplay',
              fontWeight: FontWeight.w500,
              fontSize: 32,
              color: AppColors.mint,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          name,
          style: const TextStyle(
            fontFamily: 'SFUIDisplay',
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: AppColors.blackFont,
          ),
        ),
      ],
    );
  }
}
