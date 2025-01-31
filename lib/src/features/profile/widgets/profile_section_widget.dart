import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/core/utils/constants/profile_constants.dart';
import 'package:aqylym/src/features/profile/profile_page.dart';
import 'package:aqylym/src/features/profile/widgets/profile_item_widget.dart';
import 'package:flutter/material.dart';

class ProfileSectionWidget extends StatelessWidget {
  final ProfileSection section;

  const ProfileSectionWidget({
    super.key,
    required this.section,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          section.title,
          style: const TextStyle(
            fontFamily: 'SFUIDisplay',
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: AppColors.blackFont,
          ),
        ),
        const SizedBox(height: 11),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 17,
            horizontal: 13,
          ),
          decoration: BoxDecoration(
            color: section.backgroundColor,
            borderRadius: BorderRadius.circular(ProfileConstants.kBorderRadius),
          ),
          child: Column(
            children: List.generate(
              section.items.length,
              (index) => Column(
                children: [
                  ProfileItemWidget(item: section.items[index]),
                  if (index < section.items.length - 1) const Divider(color: AppColors.dividerColor),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
