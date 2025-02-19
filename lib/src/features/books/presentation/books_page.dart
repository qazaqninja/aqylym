import 'package:aqylym/src/features/main/widgets/my_books.dart';
import 'package:aqylym/src/features/main/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({
    super.key,
  });

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBarWidget(textEditingController: textEditingController),
              const SizedBox(height: 25),
              const MyBooks(),
              const MyBooks(),
            ],
          ),
        ),
      ),
    );
  }
}
