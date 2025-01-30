import 'package:flutter/material.dart';

import '../../core/theme/colors.dart';
import '../../core/theme/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Main',
        style: FigmaTextstyle.regular24px.copyWith(color: AppColors.blackFont),
      ),
    );
  }
}
