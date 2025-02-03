import 'package:flutter/material.dart';

class BooksDetailPage extends StatelessWidget {
  const BooksDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: BooksDetailPage(),
  ));
}
