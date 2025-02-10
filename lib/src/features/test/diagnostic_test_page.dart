import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/router/router.dart';
import 'package:aqylym/src/core/theme/app_icons.dart';
import 'package:aqylym/src/core/theme/colors.dart';

class DiagnosticTestPage extends StatelessWidget {
  const DiagnosticTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                context.pop();
              },
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
          onTap: () {
            context.pop();
          },
          child: const Icon(
            AppIcons.arrow_back,
            size: 24,
            color: AppColors.blackFont,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Диагностический тест',
                  style: TextStyle(
                    fontFamily: 'SFUIDisplay',
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: AppColors.blackFont,
                  ),
                ),
                const SizedBox(height: 33),
                const Text(
                  'Данный диагностический тест пред-назначен для прохождения только родителям. Собранная информация будет помещена в базу данных, где она будет храниться без личных данных ребенка или лица, заполнившего анкету. Цель теста и системы оце-нивания 5-15R заключается в оценке поведения ребенка в различных сферах ежедневной деятельности. Результаты этого оценивания никогда не будут использованы как единственное основание для заключения выводов о ребенке или окружающей его об-становке. Результат данного тестирования НЕ является официальным медицинским заключе-нием и НЕ освобождает от наблюдения у квалифицированных врачей и специалистов в области медицины.',
                  style: TextStyle(
                    fontFamily: 'SFUIDisplay',
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: AppColors.blackFont,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 58),
                CustomButton(
                  onTap: () {
                    context.push(RoutePaths.testQuestion);
                  },
                  data: 'Пройти диагностический тест',
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String data;
  final VoidCallback onTap;
  const CustomButton({
    required this.onTap,
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.mint,
          borderRadius: BorderRadius.circular(
            63,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
        child: Center(
          child: Text(
            data,
            style: const TextStyle(
              fontFamily: 'SFUIDisplay',
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomLoginButton extends StatelessWidget {
  final String data;
  final VoidCallback onTap;
  const CustomLoginButton({
    required this.onTap,
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.mint,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
        child: Center(
          child: Text(
            data,
            style: const TextStyle(
              fontFamily: 'SFUIDisplay',
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
