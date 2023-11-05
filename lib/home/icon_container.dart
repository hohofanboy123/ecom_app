import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class IconContainer extends StatelessWidget {

  final String? icon;
  
  const IconContainer({
    Key? key,
    required this.icon,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getWidth(5)),
        padding: EdgeInsets.all(getWidth(10)),
        height: getHeight(50),
        width: getWidth(46),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(15),
        ),
        child: SvgPicture.asset(icon!),
      ),
    );
  }
}