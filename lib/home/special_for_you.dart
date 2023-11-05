import 'package:flutter/material.dart';

import '../size_config.dart';

class SpecialForYouContainer extends StatelessWidget {
  
  final String category;
  final String image;
  final int numOfBrands;
  
  const SpecialForYouContainer({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: getWidth(242),
      height: getWidth(100),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Container(
              color: const Color(0xFF343434).withOpacity(0.4),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getWidth(15.0),
                vertical: getWidth(10),
              ),
              child: Text.rich(
                TextSpan(
                  style: const TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                      text: "$category\n",
                      style: TextStyle(
                        fontSize: getWidth(18),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: "$numOfBrands Brands")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}