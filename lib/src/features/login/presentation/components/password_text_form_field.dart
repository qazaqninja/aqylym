import 'package:aqylym/src/core/theme/app_icons.dart';
import 'package:aqylym/src/core/theme/colors.dart';
import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({
    super.key,
    required this.passwordController,
    required this.isPasswordVisible,
    this.onPasswordVisibilityChanged,
    this.errorText = 'Пожалуйста, введите пароль',
    this.confirm = false,
  });

  final TextEditingController passwordController;
  final bool isPasswordVisible;
  final VoidCallback? onPasswordVisibilityChanged;
  final bool? confirm;
  final String? errorText;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 4,
      ),
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        controller: widget.passwordController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return widget.errorText;
          }
          return null;
        },
        cursorHeight: 24,
        style: const TextStyle(
          fontFamily: 'SFUIDisplay',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.icon,
        ),
        obscureText: !widget.isPasswordVisible,
        obscuringCharacter: '•',
        cursorColor: AppColors.mint,
        decoration: InputDecoration(
          errorStyle: const TextStyle(
            fontFamily: 'SFUIDisplay',
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.red,
          ),
          labelText: widget.confirm! ? 'Повторите пароль' : 'Пароль',
          labelStyle: const TextStyle(
            fontFamily: 'SFUIDisplay',
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColors.greySignInInput,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColors.mint,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              widget.isPasswordVisible ? AppIcons.eye_crossed : AppIcons.eye,
              color: const Color(0xFF64748B),
            ),
            onPressed: () {
              widget.onPasswordVisibilityChanged?.call();
            },
          ),
        ),
      ),
    );
  }
}
