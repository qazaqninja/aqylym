import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/theme/app_icons.dart';
import 'package:aqylym/src/core/theme/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required this.textEditingController,
  });

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
