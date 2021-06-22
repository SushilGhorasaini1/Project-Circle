import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoWidget extends StatelessWidget {
  final double height;
  const LogoWidget({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return SvgPicture.asset(
      isDarkMode ? "assets/svgs/logo_light.svg" : "assets/svgs/logo_dark.svg",
      height: height,
    );
  }
}
