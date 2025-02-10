import 'package:aqylym/src/core/theme/app_icons.dart';
import 'package:aqylym/src/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key, required this.child});

  final StatefulNavigationShell child;
  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.menuGrey,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        selectedItemColor: AppColors.mint,
        unselectedItemColor: AppColors.grey,
        currentIndex: widget.child.currentIndex,
        onTap: (index) {
          widget.child.goBranch(index);
        },
        items: _getNavItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _getNavItems() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(AppIcons.home),
        label: 'Главная',
      ),
      const BottomNavigationBarItem(
        icon: Icon(AppIcons.book),
        label: 'Мои книги',
      ),
      const BottomNavigationBarItem(
        icon: Icon(AppIcons.jigsaw),
        label: 'Игры',
      ),
      const BottomNavigationBarItem(
        icon: Icon(AppIcons.user),
        label: 'Профиль',
      ),
      const BottomNavigationBarItem(
        icon: Icon(AppIcons.help),
        label: 'Чаты',
      ),
    ];
  }
}
