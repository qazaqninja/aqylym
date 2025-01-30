import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'games',
        style: FigmaTextstyle.regular24px.copyWith(color: AppColors.blackFont),
      ),
    );
  }
}
