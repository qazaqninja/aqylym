import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/router/router.dart';
import 'package:aqylym/src/core/theme/app_icons.dart';
import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/core/theme/theme.dart';
import 'package:aqylym/src/features/games/widgets/game_card.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Text(
              'Игры для развития',
              style: FigmaTextstyle.medium24px.copyWith(color: AppColors.blackFont),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    GameCard(
                      image: 'assets/images/game1.svg',
                      title: 'Логическая цепочка',
                      ability: 'логика',
                      description: 'Установите закономерность верхних карточек, выбрав один из варианто нижнего ряда.',
                      ageRange: '4-6 лет',
                      onPlay: () {
                        context.push(RoutePaths.logicGame);
                      },
                    ),
                    const SizedBox(height: 16),
                    GameCard(
                      image: 'assets/images/game2.svg',
                      title: 'Ошибки художника',
                      ability: 'внимание',
                      description: 'Посмотри на картинки и определи,какие из них нарисованы неправильно.',
                      ageRange: '5-10 лет',
                      onPlay: () {},
                    ),
                    const SizedBox(height: 16),
                    GameCard(
                      image: 'assets/images/game3.svg',
                      title: 'Птички',
                      ability: 'скорость',
                      description: 'Задача задана постоянный позволяет сложившаяся особенностипоставленных.',
                      ageRange: '11-13 лет',
                      onPlay: () {},
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
