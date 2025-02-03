import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/router/router.dart';
import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/features/main/widgets/book_card.dart';

class MyBooks extends StatelessWidget {
  const MyBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Мои книги',
          style: TextStyle(
            fontFamily: 'SFUIDisplay',
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColors.blackFont,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 250,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            separatorBuilder: (context, index) => const SizedBox(width: 18),
            itemBuilder: (context, index) {
              return BookCard(
                isRec: false,
                image: 'assets/images/book1.svg',
                title: 'Сказка',
                description: 'Белка',
                onPlay: () {
                  context.push(RoutePaths.bookDetail);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
