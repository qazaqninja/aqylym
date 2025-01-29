import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {},
            child: const Icon(
              Icons.chevron_left,
              size: 24,
              color: AppColors.blackFont,
            ),
          ),
        ),
        body: Column(
          children: [
            Column(
              children: [
                Text(
                  'asdasda',
                  style: FigmaTextstyle.medium24px.copyWith(color: AppColors.blackFont),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'C возвращением, войдите, чтобы продолжить',
                  style: FigmaTextstyle.medium24px.copyWith(color: AppColors.blackFont),
                  textAlign: TextAlign.center,
                )
              ],
            )
          ],
        ));
  }
}
