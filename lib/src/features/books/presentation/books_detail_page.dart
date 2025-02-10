import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/theme/app_icons.dart';
import 'package:aqylym/src/core/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

// Constants for reusable values
class _BookDetailConstants {
  static const double horizontalPadding = 16.0;
  static const double verticalPadding = 8.0;
  static const double bookImageWidth = 160.0;
  static const double bookImageHeight = 190.0;
  static const double borderRadius = 12.0;
  static const double topRadius = 30.0;
}

class BookModel {
  final String type;
  final String title;
  final String description;
  final String imagePath;

  const BookModel({
    required this.type,
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

class BooksDetailPage extends StatelessWidget {
  const BooksDetailPage({super.key});

  BookModel get _bookData => const BookModel(
        type: 'Сказка',
        title: 'Белка',
        description:
            'Хорошим помощником белки Бэлы оказался соловей. Каким образом он смог стать полезным белке? Сказка на ночь расскажет нам об этом...',
        imagePath: 'assets/images/book1.svg',
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: _BookDetailBackground(
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              _TopSection(bookData: _bookData),
              const SizedBox(height: 40),
              _BottomSection(bookData: _bookData),
            ],
          ),
        ),
      ),
    );
  }
}

// Background gradient component
class _BookDetailBackground extends StatelessWidget {
  final Widget child;

  const _BookDetailBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFCC6854), Color(0xFFFACC7C)],
        ),
      ),
      child: child,
    );
  }
}

// Top section with navigation and book image
class _TopSection extends StatelessWidget {
  final BookModel bookData;

  const _TopSection({required this.bookData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: _BookDetailConstants.horizontalPadding,
        vertical: _BookDetailConstants.verticalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _NavigationBar(),
          const SizedBox(height: 28),
          _BookImage(imagePath: bookData.imagePath),
        ],
      ),
    );
  }
}

// Navigation bar component
class _NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _BackButton(),
        const SizedBox.shrink(),
      ],
    );
  }
}

// Back button component
class _BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => context.pop(),
      child: const Icon(
        AppIcons.chevron_left,
        size: 25,
        color: AppColors.blackFont,
      ),
    );
  }
}

// Book image component
class _BookImage extends StatelessWidget {
  final String imagePath;

  const _BookImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(_BookDetailConstants.borderRadius),
      child: Image.asset(
        imagePath,
        width: _BookDetailConstants.bookImageWidth,
        height: _BookDetailConstants.bookImageHeight,
        fit: BoxFit.cover,
      ),
    );
  }
}

class _BottomSection extends StatelessWidget {
  final BookModel bookData;

  const _BottomSection({required this.bookData});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          _MainContent(bookData: bookData),
          const _BookmarkButton(),
        ],
      ),
    );
  }
}

class _MainContent extends StatelessWidget {
  final BookModel bookData;

  const _MainContent({required this.bookData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(_BookDetailConstants.topRadius),
          topRight: Radius.circular(_BookDetailConstants.topRadius),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: _ScrollableContent(bookData: bookData),
          ),
          const _ActionButtons(),
        ],
      ),
    );
  }
}

// Scrollable content section
class _ScrollableContent extends StatelessWidget {
  final BookModel bookData;

  const _ScrollableContent({required this.bookData});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _BookType(type: bookData.type),
            _BookTitle(title: bookData.title),
            const SizedBox(height: 24),
            _AboutSection(description: bookData.description),
          ],
        ),
      ),
    );
  }
}

// Book type component
class _BookType extends StatelessWidget {
  final String type;

  const _BookType({required this.type});

  @override
  Widget build(BuildContext context) {
    return Text(
      type,
      style: GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.authorsName,
      ),
    );
  }
}

// Book title component
class _BookTitle extends StatelessWidget {
  final String title;

  const _BookTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: AppColors.blackFont,
      ),
    );
  }
}

// About section component
class _AboutSection extends StatelessWidget {
  final String description;

  const _AboutSection({required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'О книге',
          style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColors.pink,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          description,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.blackFont,
          ),
        ),
        const SizedBox(height: 12),
        _ReadMoreButton(),
      ],
    );
  }
}

class _ReadMoreButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox.shrink(),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: const Text(
            'Читать далее',
            style: TextStyle(
              color: AppColors.pink,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          Expanded(
            child: _ActionButton(
              onPressed: () {},
              label: 'Читать',
              backgroundColor: const Color(0xFF2F7C78),
              textColor: Colors.white,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: _ActionButton(
              onPressed: () {},
              label: 'Слушать',
              backgroundColor: const Color(0xFFF5F5F5),
              textColor: Colors.black87,
              elevation: 0,
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final double elevation;

  const _ActionButton({
    required this.onPressed,
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    this.elevation = 1,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: elevation,
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontSize: 16,
        ),
      ),
    );
  }
}

class _BookmarkButton extends StatelessWidget {
  const _BookmarkButton();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -20,
      right: 30,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF2F7C78),
        ),
        child: const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.bookmark_border,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
