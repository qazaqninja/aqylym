import 'package:aqylym/src/core/theme/app_icons.dart';
import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/features/main/widgets/custom_slider.dart';

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
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteFont,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      AppIcons.search,
                      color: AppColors.mint,
                      size: 24,
                    ),
                    hintText: 'Название книги или автора',
                    hintStyle: TextStyle(
                      fontFamily: 'SFUIDisplay',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 7),
                  ),
                ),
              ),
              const Row(
                children: [
                  CustomSlider(
                    activeTrackColor: AppColors.starColor,
                    iconSize: 40,
                    iconData: Icons.star,
                    iconColor: AppColors.starColor,
                  ),
                  CustomSlider(
                    activeTrackColor: AppColors.puzzleColor,
                    iconSize: 40,
                    iconData: Icons.extension,
                    iconColor: AppColors.puzzleColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
