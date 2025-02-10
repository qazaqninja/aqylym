import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/theme/colors.dart';

class GameCard extends StatelessWidget {
  final String image;
  final String title;
  final String ability;
  final String description;
  final String ageRange;
  final VoidCallback onPlay;

  const GameCard({
    super.key,
    required this.image,
    required this.title,
    required this.ability,
    required this.description,
    required this.ageRange,
    required this.onPlay,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  isAntiAlias: true,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontFamily: 'SFUIDisplay',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackFont,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Способность: $ability',
                      style: const TextStyle(
                        fontFamily: 'SFUIDisplay',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackFont,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: const TextStyle(
                        fontFamily: 'SFUIDisplay',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey,
                      ),
                    ),
                    const SizedBox(height: 17),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: onPlay,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.mint,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(37),
                            ),
                          ),
                          child: const Text(
                            'Играть',
                            style: TextStyle(
                              fontFamily: 'SFUIDisplay',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.whiteFont,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          ageRange,
                          style: const TextStyle(
                            fontFamily: 'SFUIDisplay',
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: AppColors.mint,
                          ),
                        ),
                      ],
                    ),
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
