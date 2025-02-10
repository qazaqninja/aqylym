import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/features/main/widgets/custom_slider.dart';
import 'package:aqylym/src/features/main/widgets/my_books.dart';
import 'package:aqylym/src/features/main/widgets/rec_books.dart';
import 'package:aqylym/src/features/main/widgets/search_bar_widget.dart';

import '../../app/imports.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBarWidget(
                  textEditingController: textEditingController,
                ),
                const SizedBox(height: 25),
                const Row(
                  children: [
                    Column(
                      children: [
                        CustomSlider(
                          activeTrackColor: AppColors.puzzleColor,
                          iconSize: 40,
                          iconData: Icons.extension,
                          iconColor: AppColors.puzzleColor,
                        ),
                        Text(
                          'Прохождение игр',
                          style: TextStyle(
                            fontFamily: 'SFUIDisplay',
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomSlider(
                          activeTrackColor: AppColors.starColor,
                          iconSize: 40,
                          iconData: Icons.star,
                          iconColor: AppColors.starColor,
                        ),
                        Text(
                          'Правильное выполнение',
                          style: TextStyle(
                            fontFamily: 'SFUIDisplay',
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const MyBooks(),
                const SizedBox(height: 16),
                const RecBooks(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
