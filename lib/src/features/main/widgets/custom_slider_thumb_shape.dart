import 'package:aqylym/src/app/imports.dart';

class CustomSliderThumbShape extends SliderComponentShape {
  final IconData iconData;
  final double iconSize;
  final Color iconColor;

  CustomSliderThumbShape({
    required this.iconData,
    required this.iconSize,
    required this.iconColor,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(iconSize, iconSize);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final canvas = context.canvas;
    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(3.14159 / 4);
    canvas.translate(-center.dx, -center.dy);

    final iconData = IconData(
      this.iconData.codePoint,
      fontFamily: this.iconData.fontFamily,
      matchTextDirection: this.iconData.matchTextDirection,
    );

    final textPainter = TextPainter(
      text: TextSpan(
        text: String.fromCharCode(iconData.codePoint),
        style: TextStyle(
          fontSize: iconSize,
          fontFamily: iconData.fontFamily,
          color: iconColor,
        ),
      ),
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();

    final iconOffset = Offset(
      center.dx - (textPainter.width / 2),
      center.dy - (textPainter.height / 2),
    );

    textPainter.paint(canvas, iconOffset);
  }
}
