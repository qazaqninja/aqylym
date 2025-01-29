import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/router/router.dart';
import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/core/theme/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  bool isLastPage = false;

  final List<OnboardingData> onboardingData = [
    OnboardingData(
      image: 'assets/images/intro1.jpg',
      title: 'Добро пожаловать!',
      description: 'В Aqylym ты сможешь читать интересные книжки, играть познавательные игры и учиться новому!',
    ),
    OnboardingData(
      image: 'assets/images/intro2.jpg',
      title: 'Увлекательное обучение',
      description: 'Учись играя и получай новые знания в интересном формате',
    ),
    OnboardingData(
      image: 'assets/images/intro3.jpg',
      title: 'Развивайся с нами',
      description: 'Отслеживай свой прогресс и становись лучше каждый день',
    ),
    OnboardingData(
      image: 'assets/images/intro4.jpg',
      title: 'Развивайся с нами',
      description: 'Отслеживай свой прогресс и становись лучше каждый день',
    ),
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleNext() {
    if (isLastPage) {
      // Navigate to login/registration
      context.push(RoutePaths.login);
      // Or with GoRouter:
      // context.go('/login');
    } else {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _handleSkip() {
    // Skip directly to login/registration
    context.push(RoutePaths.login);
    // Or with GoRouter:
    // context.go('/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: onboardingData.length,
              onPageChanged: (index) {
                setState(() {
                  isLastPage = index == onboardingData.length - 1;
                });
              },
              itemBuilder: (context, index) => OnboardingPageContent(
                data: onboardingData[index],
              ),
            ),
            Positioned(
              bottom: 16,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SmoothPageIndicator(
                      controller: _controller,
                      count: onboardingData.length,
                      effect: const ExpandingDotsEffect(
                        expansionFactor: 3.0,
                        dotHeight: 8.0,
                        dotWidth: 8.0,
                        spacing: 8.0,
                        activeDotColor: AppColors.mint,
                        dotColor: Color(0xFFC4C4C4),
                      ),
                    ),
                    const SizedBox(height: 23),
                    Container(
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                        color: AppColors.mint,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: InkWell(
                        onTap: _handleNext,
                        child: Center(
                          child: Text(
                            isLastPage ? 'Начать' : 'Следующий',
                            style: FigmaTextstyle.bodyRegular20px.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    if (!isLastPage)
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: _handleSkip,
                        child: Text(
                          'Пропустить',
                          style: FigmaTextstyle.bodyRegular20px.copyWith(
                            color: AppColors.blackFont,
                          ),
                        ),
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

class OnboardingData {
  final String image;
  final String title;
  final String description;

  OnboardingData({
    required this.image,
    required this.title,
    required this.description,
  });
}

class OnboardingPageContent extends StatelessWidget {
  final OnboardingData data;

  const OnboardingPageContent({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Image.asset(
              data.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 25),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            children: [
              Text(
                data.title,
                style: FigmaTextstyle.medium24px.copyWith(color: AppColors.blackFont),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              Text(
                data.description,
                style: FigmaTextstyle.bodyRegular20px.copyWith(
                  color: AppColors.blackFont,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
