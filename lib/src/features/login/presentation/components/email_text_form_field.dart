import 'package:aqylym/src/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 4,
      ),
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[ -~]')),
        ],
        controller: emailController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Пожалуйста, введите email';
          }
          final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
          if (!emailRegex.hasMatch(value)) {
            return 'Пожалуйста, введите корректный email';
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
        cursorColor: AppColors.mint,
        decoration: InputDecoration(
          labelText: 'Почта',
          labelStyle: const TextStyle(
            fontFamily: 'SFUIDisplay',
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColors.greySignInInput,
          ),
          errorStyle: const TextStyle(
            fontFamily: 'SFUIDisplay',
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.red,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
          ),
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
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
