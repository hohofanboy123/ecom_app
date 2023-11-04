import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class SocialMediaContainer extends StatelessWidget {

  final String? icon;
  
  const SocialMediaContainer({
    Key? key,
    required this.icon,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getWidth(10)),
        padding: EdgeInsets.all(getWidth(12)),
        height: getHeight(41),
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