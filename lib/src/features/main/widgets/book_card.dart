import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class BookCard extends StatelessWidget {
  static const double _cardWidth = 120.0;
  static const double _imageHeight = 150.0;
  static const double _contentPadding = 7.0;
  static const double _borderRadius = 10.0;
  static const int _maxTextLines = 1;
  final bool isRec;
  final String image;
  final String title;
  final String description;

  const BookCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.isRec,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _cardWidth,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBookCover(),
          _buildBookInfo(),
          isRec ? const SizedBox.shrink() : _buildProgressIndicator(),
        ],
      ),
    );
  }

  Widget _buildBookCover() {
    return Container(
      height: _imageHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_borderRadius),
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(_borderRadius),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
          errorBuilder: (context, error, stackTrace) {
            return const Center(
              child: Icon(Icons.broken_image, color: Colors.grey),
            );
          },
        ),
      ),
    );
  }

  Widget _buildBookInfo() {
    return Padding(
      padding: const EdgeInsets.only(
        top: _contentPadding,
        bottom: _contentPadding,
        left: _contentPadding,
        right: _contentPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildText(
            text: title,
            color: AppColors.authorsName,
          ),
          const SizedBox(height: 4),
          _buildText(
            text: description,
            color: AppColors.blackFont,
          ),
        ],
      ),
    );
  }

  Widget _buildText({
    required String text,
    required Color color,
  }) {
    return Text(
      text,
      maxLines: _maxTextLines,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: color,
        height: 1.2,
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return Padding(
      padding: const EdgeInsets.all(_contentPadding),
      child: LinearProgressBar(
        maxSteps: 6,
        currentStep: 5,
        progressType: LinearProgressBar.progressTypeLinear,
        progressColor: AppColors.pink,
        backgroundColor: AppColors.progressBack,
        minHeight: 6,
        borderRadius: BorderRadius.circular(_borderRadius),
      ),
    );
  }
}
