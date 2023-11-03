import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class SocialMediaContainer extends StatelessWidget {
  const SocialMediaContainer({
    Key? key,
    this.icon,
    this.press,
  }) : super(key: key);

  final String? icon;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getWidth(10)),
        padding: EdgeInsets.all(getWidth(12)),
        height: getHeight(40),
        width: getWidth(40),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon!),
      ),
    );
  }
}