import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/router/router.dart';
import 'package:aqylym/src/core/theme/app_icons.dart';
import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/core/utils/constants/profile_constants.dart';
import 'package:aqylym/src/features/profile/widgets/custom_switch.dart';
import 'package:aqylym/src/features/profile/widgets/profile_header.dart';
import 'package:aqylym/src/features/profile/widgets/profile_section_widget.dart';

class ProfileSection {
  final String title;
  final List<ProfileItem> items;
  final Color backgroundColor;

  const ProfileSection({
    required this.title,
    required this.items,
    this.backgroundColor = AppColors.containerColor,
  });
}

class ProfileItem {
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;

  const ProfileItem({
    required this.title,
    this.trailing,
    this.onTap,
  });
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isEnabled = false;

  List<ProfileSection> get _sections => [
        ProfileSection(
          title: 'Основное',
          items: [
            ProfileItem(
              title: 'Пройти диагностический тест',
              trailing: const Icon(AppIcons.chevron_right, color: AppColors.blackFont, size: 20),
              onTap: () {
                context.push(RoutePaths.test);
              },
            ),
            ProfileItem(
              title: 'Добавить отслеживателя',
              trailing: const Icon(AppIcons.chevron_right, color: AppColors.blackFont, size: 20),
              onTap: () {},
            ),
            ProfileItem(
              title: 'Напоминания',
              trailing: CustomSwitch(
                value: isEnabled,
                onChanged: (value) {
                  setState(() => isEnabled = value);
                },
              ),
            ),
          ],
        ),
        ProfileSection(
          title: 'Информация аккаунта',
          items: [
            ProfileItem(
              title: 'Логин',
              trailing: const Icon(AppIcons.chevron_right, color: AppColors.blackFont, size: 20),
              onTap: () {},
            ),
            ProfileItem(
              title: 'Пароль',
              trailing: const Icon(AppIcons.chevron_right, color: AppColors.blackFont, size: 20),
              onTap: () {},
            ),
            ProfileItem(
              title: 'Возраст',
              trailing: const Icon(AppIcons.chevron_right, color: AppColors.blackFont, size: 20),
              onTap: () {},
            ),
          ],
        ),
        ProfileSection(
          title: 'Экспортировать',
          backgroundColor: AppColors.backgroundOfName,
          items: [
            ProfileItem(
              title: 'Скачать книги',
              onTap: () {},
            ),
          ],
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(ProfileConstants.kPadding),
          child: Column(
            children: [
              const ProfileHeader(
                initials: 'AK',
                name: 'Алуа Климова',
              ),
              const SizedBox(height: 41),
              ...List.generate(
                _sections.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                    bottom: index < _sections.length - 1 ? ProfileConstants.kSectionSpacing : 0,
                  ),
                  child: ProfileSectionWidget(section: _sections[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
