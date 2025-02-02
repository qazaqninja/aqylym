import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/router/router.dart';
import 'package:aqylym/src/core/theme/app_icons.dart';
import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/core/theme/theme.dart';
import 'package:aqylym/src/features/login/data/auth.dart';
import 'package:aqylym/src/features/login/presentation/components/email_text_form_field.dart';
import 'package:aqylym/src/features/login/presentation/components/password_text_form_field.dart';
import 'package:aqylym/src/features/test/diagnostic_test_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool _isPasswordVisible = false;
  final _formKey = GlobalKey<FormState>();
  final _auth = Auth();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final String _passwordErrorText = 'Пожалуйста, введите пароль';
  bool _isLoading = false;

  Future<void> _handleSignUp() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      if (mounted) {
        context.go(RoutePaths.main);
      }
    } on FirebaseAuthException catch (e) {
      if (mounted) {
        String message = 'An error occurred';

        switch (e.code) {
          case 'email-already-in-use':
            message = 'This email is already registered.';
            break;
          case 'weak-password':
            message = 'The password is too weak.';
            break;
          case 'invalid-email':
            message = 'Invalid email address.';
            break;
        }

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message), backgroundColor: Colors.red),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(context),
        body: _buildBody(context),
      );

  PreferredSizeWidget _buildAppBar(BuildContext context) => AppBar(
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
      );

  Widget _buildBody(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              _buildHeader(),
              const SizedBox(height: 40),
              _buildForm(),
              const SizedBox(height: 10),
              _buildFooter(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      );

  Widget _buildHeader() => Column(
        children: [
          Text(
            'Регистрация',
            style: FigmaTextstyle.medium24px.copyWith(color: AppColors.blackFont),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 9),
          const Text(
            'Завершите процесс регестрации,чтобы продолжить',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      );

  Widget _buildForm() => Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            EmailTextFormField(emailController: _emailController),
            PasswordTextFormField(
              passwordController: _passwordController,
              isPasswordVisible: _isPasswordVisible,
              errorText: _passwordErrorText,
              onPasswordVisibilityChanged: () => setState(() => _isPasswordVisible = !_isPasswordVisible),
            ),
            const SizedBox(height: 15),
            const Text(
              'Пароль должен содержать не менее 6 символов',
              style: TextStyle(
                fontFamily: 'SFUIDisplay',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.grey,
              ),
            )
          ],
        ),
      );

  Widget _buildFooter() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildForgotPassword(),
          const SizedBox(height: 26),
          CustomLoginButton(onTap: _handleSignUp, data: 'Зарегистрироваться'),
          const SizedBox(height: 26),
          _buildSocialLogin(),
          const SizedBox(height: 38),
          _buildSignUpText(),
        ],
      );

  Widget _buildForgotPassword() => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox.shrink(),
          Text(
            'Забыли пароль?',
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: AppColors.grey,
              decorationThickness: 1.0,
              fontFamily: 'SFUIDisplay',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.grey,
            ),
          ),
        ],
      );

  Widget _buildSocialLogin() => Column(
        children: [
          const Text(
            'Или зарегестрироваться с помощью',
            style: TextStyle(
              fontFamily: 'SFUIDisplay',
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.grey,
            ),
          ),
          const SizedBox(height: 38),
          InkWell(
            onTap: () {},
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.icon),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 11.0, horizontal: 11),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(AppIcons.google, size: 40, color: AppColors.grey),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Зарегистрироваться с Google',
                        style: TextStyle(
                          fontFamily: 'SFUIDisplay',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: AppColors.icon,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );

  Widget _buildSignUpText() => RichText(
        text: TextSpan(
          text: 'Уже есть аккаунт?',
          style: const TextStyle(
            fontFamily: 'SFUIDisplay',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: AppColors.blackFont,
          ),
          children: <TextSpan>[
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushReplacement(RoutePaths.login);
                },
              text: ' Войти',
              style: const TextStyle(
                fontFamily: 'SFUIDisplay',
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.mint,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      );
}

void main() {
  runApp(const MaterialApp(home: RegistrationPage()));
}
