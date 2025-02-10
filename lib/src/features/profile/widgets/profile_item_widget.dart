import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/features/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileItemWidget extends StatelessWidget {
  final ProfileItem item;

  const ProfileItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: item.onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item.title,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              color: AppColors.icon,
            ),
          ),
          if (item.trailing != null) item.trailing!,
        ],
      ),
    );
  }
}
