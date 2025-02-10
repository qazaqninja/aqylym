import 'package:aqylym/src/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final String activeText;
  final String inactiveText;

  const CustomSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.activeText = 'Вкл.',
    this.inactiveText = 'Выкл.',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Container(
        width: 100,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.switchColor,
              ),
            ),
            AnimatedAlign(
              duration: const Duration(milliseconds: 100),
              alignment: value ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 50,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      inactiveText,
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        color: value ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      activeText,
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        color: value ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
