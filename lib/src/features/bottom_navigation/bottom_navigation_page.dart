import 'package:aqylym/src/core/theme/app_icons.dart';
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
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        selectedItemColor: const Color(0xFF020617),
        unselectedItemColor: const Color(0xFF94A3B8),
        currentIndex: widget.child.currentIndex,
        onTap: (index) {
          widget.child.goBranch(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(AppIcons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.book),
            label: 'Мои книги',
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.jigsaw),
            label: 'Игры',
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.user),
            label: 'Профиль',
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.help),
            label: 'Чаты',
          ),
        ],
      ),
    );
  }
}
