import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        "icon": "assets/icons/Flash Icon.svg", 
        "text": "Flash Deal"
      },
      {
        "icon": "assets/icons/Bill Icon.svg", 
        "text": "Bill"
      },
      {
        "icon": "assets/icons/Game Icon.svg", 
        "text": "Game"
      },
      {
        "icon": "assets/icons/Gift Icon.svg", 
        "text": "Daily Gift"
      },
      {
        "icon": "assets/icons/Discover.svg", 
        "text": "More"
      },
    ];
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            categories.length,
            (index) => CategoryCard(
              icon: categories[index]["icon"],
              text: categories[index]["text"],
            ),
          ),
        ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final String? icon, text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getWidth(55),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(getWidth(15)),
            height: getWidth(55),
            width: getWidth(55),
            decoration: BoxDecoration(
              color: const Color(0xFFFFECDF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(icon!),
          ),
          const SizedBox(height: 5),
          Text(text!, textAlign: TextAlign.center)
        ],
      ),
    );
  }
}