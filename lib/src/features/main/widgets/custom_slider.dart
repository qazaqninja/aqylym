import 'package:aqylym/src/app/imports.dart';
import 'package:aqylym/src/core/theme/colors.dart';
import 'package:aqylym/src/features/main/widgets/custom_slider_thumb_shape.dart';

class CustomSlider extends StatefulWidget {
  final IconData iconData;
  final double iconSize;
  final Color iconColor;
  final Color activeTrackColor;
  const CustomSlider(
      {Key? key,
      required this.iconData,
      required this.iconSize,
      required this.iconColor,
      required this.activeTrackColor})
      : super(key: key);

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double sliderValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: SliderTheme(
        data: SliderThemeData(
          trackHeight: 15,
          inactiveTrackColor: AppColors.inactiveSliderColor,
          activeTrackColor: widget.activeTrackColor.withOpacity(0.8),
          thumbShape:
              CustomSliderThumbShape(iconData: widget.iconData, iconSize: widget.iconSize, iconColor: widget.iconColor),
        ),
        child: Slider(
          value: sliderValue,
          min: 0,
          max: 100,
          onChanged: (value) {
            setState(() {
              sliderValue = value;
            });
          },
        ),
      ),
    );
  }
}
