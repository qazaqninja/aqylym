import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/theme/app_icons.dart';
import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/core/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogicGamePage extends StatelessWidget {
  const LogicGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildHeader(),
              _buildQuestionRow(),
              _buildOptionsRow(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mint,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(37),
                  ),
                ),
                child: const Text(
                  'Готово',
                  style: TextStyle(
                    fontFamily: 'SFUIDisplay',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.whiteFont,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () => context.pop(),
        child: const Icon(
          AppIcons.chevron_left,
          size: 25,
          color: AppColors.blackFont,
        ),
      ),
      title: Text(
        'Логическая цепочка',
        style: FigmaTextstyle.bodyRegular20px.copyWith(color: AppColors.appBarTitleColor),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Column(
        children: [
          Text(
            'Уровень 1',
            style: FigmaTextstyle.medium24px.copyWith(
              color: AppColors.blackFont,
            ),
          ),
          const SizedBox(height: 6),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Определи логическую последовательность картинок',
              style: TextStyle(
                fontFamily: 'SFUIDisplay',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.blackFont,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionRow() {
    const double imageSize = 90.0;

    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/question.svg',
            width: 46,
            height: 80,
          ),
          const SizedBox(width: 20),
          const GameItem(
            path: 'assets/images/baloon1.png',
            width: imageSize,
            height: imageSize,
          ),
          const GameItem(
            path: 'assets/images/baloon2.png',
            width: imageSize,
            height: imageSize,
          ),
          const GameItem(
            path: 'assets/images/baloon3.png',
            width: imageSize,
            height: imageSize,
          ),
        ],
      ),
    );
  }

  Widget _buildOptionsRow() {
    const double imageSize = 90.0;

    return const FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OptionItem(
            path: 'assets/images/baloon4.png',
            width: imageSize,
            height: imageSize,
          ),
          SizedBox(width: 12),
          OptionItem(
            path: 'assets/images/baloon5.png',
            width: imageSize,
            height: imageSize,
          ),
          SizedBox(width: 12),
          OptionItem(
            path: 'assets/images/baloon6.png',
            width: imageSize,
            height: imageSize,
          ),
        ],
      ),
    );
  }
}

class GameItem extends StatelessWidget {
  final String path;
  final double width;
  final double height;

  const GameItem({
    super.key,
    required this.path,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: width,
      height: height,
      filterQuality: FilterQuality.high,
    );
  }
}

class OptionItem extends StatelessWidget {
  final String path;
  final double width;
  final double height;

  const OptionItem({
    super.key,
    required this.path,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _handleOptionSelected(context),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.greyGame,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.asset(
          path,
          width: width,
          height: height,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }

  void _handleOptionSelected(BuildContext context) {}
}
