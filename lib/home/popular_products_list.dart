import 'package:ecom_app/constants.dart';
import 'package:ecom_app/home/products_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                popularProducts.length,
                (index) {
                  return ProductCard(product: popularProducts[index]);
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  
  final Product product;
  
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: getWidth(150),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(getWidth(20)),
            decoration: BoxDecoration(
              color: secondColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset("assets/images/Image Popular Product 1.png"),
          ),
          const SizedBox(height: 10),
          Text(
            product.title,
            style: TextStyle(color: Colors.black),
            maxLines: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${product.price}",
                style: TextStyle(
                  fontSize: getWidth(18),
                  fontWeight: FontWeight.w600,
                  color: mainColor,
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(getWidth(8)),
                  height: getWidth(28),
                  width: getWidth(28),
                  child: SvgPicture.asset(
                    product.isFavourite ? "assets/icons/Heart Icon_2.svg" : "assets/icons/Heart Icon.svg",
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}