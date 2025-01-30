import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Help',
        style: FigmaTextstyle.regular24px.copyWith(color: AppColors.blackFont),
      ),
    );
  }
}
