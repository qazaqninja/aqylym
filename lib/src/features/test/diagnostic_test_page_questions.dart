import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/theme/app_icons.dart';
import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/features/test/diagnostic_test_page.dart';

class DiagnosticTestPageQuestions extends StatefulWidget {
  const DiagnosticTestPageQuestions({super.key});

  @override
  State<DiagnosticTestPageQuestions> createState() => _DiagnosticTestPageQuestionsState();
}

class _DiagnosticTestPageQuestionsState extends State<DiagnosticTestPageQuestions> {
  int currentQuestion = 0;
  List<int?> selectedAnswers = List.filled(5, null);

  final List<String> questions = [
    'Трудно осваивать новые моторные навыки, такие как: обучение катанию на велосипеде, коньках, плавание.',
    'Испытывает трудности с концентрацией внимания, легко отвлекается на посторонние стимулы.',
    'Проявляет необычную чувствительность к звукам, текстурам, запахам или другим сенсорным воздействиям.',
    'Демонстрирует сложности в понимании и выражении эмоций, как своих, так и других людей.',
    'Предпочитает строгий распорядок дня и сильно расстраивается при его изменении.'
  ];

  final List<String> options = ['Определенно так', 'Иногда случается', 'Нет, такого не бывает'];

  void selectAnswer(int optionIndex) {
    setState(() {
      selectedAnswers[currentQuestion] = optionIndex;
    });
  }

  bool get canMoveNext => selectedAnswers[currentQuestion] != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${currentQuestion + 1}/',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: '${questions.length}',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 31),
            Text(
              questions[currentQuestion],
              style: const TextStyle(
                color: AppColors.questionColor,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 49),
                  ...List.generate(
                      options.length,
                      (index) => Column(
                            children: [
                              questionOptions(
                                options[index],
                                index,
                                selectedAnswers[currentQuestion] == index,
                                () => selectAnswer(index),
                              ),
                              const SizedBox(height: 20),
                            ],
                          )),
                  const Spacer(),
                  CustomButton(
                    onTap: canMoveNext
                        ? () {
                            if (currentQuestion < questions.length - 1) {
                              setState(() {
                                currentQuestion++;
                              });
                            }
                          }
                        : () {},
                    data: 'Следующий',
                  ),
                  const SizedBox(height: 25)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget questionOptions(String data, int index, bool isSelected, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: isSelected ? Colors.blue : AppColors.authorsName,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              data,
              style: TextStyle(
                color: isSelected ? Colors.blue : AppColors.authorsName,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            Icon(
              isSelected ? Icons.check_circle : Icons.circle_outlined,
              size: 24,
              color: isSelected ? Colors.blue : AppColors.authorsName,
            )
          ],
        ),
      ),
    );
  }
}
