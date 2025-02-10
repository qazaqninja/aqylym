import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/theme/app_icons.dart';
import 'package:aqylym/src/core/theme/colors.dart';

class BookReadPage extends StatelessWidget {
  const BookReadPage({super.key});

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
            AppIcons.arrow_back,
            size: 24,
            color: AppColors.blackFont,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () => context.pop(),
              child: const Icon(
                AppIcons.cross,
                size: 24,
                color: AppColors.blackFont,
              ),
            ),
          ),
        ],
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: AppColors.bookContainerColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Text(
                'Хорошим помощником белки Бэлы оказался соловей. Каким образом он смог стать полезным белке?  Сказка на ночь расскажет нам об этом…'),
          )
        ],
      )),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: BookReadPage(),
  ));
}
