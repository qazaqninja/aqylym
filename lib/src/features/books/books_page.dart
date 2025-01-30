import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'books',
        style: FigmaTextstyle.regular24px.copyWith(color: AppColors.blackFont),
      ),
    );
  }
}
