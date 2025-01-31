import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/theme/app_icons.dart';
import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/core/theme/theme.dart';

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
          ],
        ),
      ),
    );
  }
}
