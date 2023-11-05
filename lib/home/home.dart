import 'package:ecom_app/home/categories.dart';
import 'package:ecom_app/home/icon_container.dart';
import 'package:ecom_app/home/popular_products_list.dart';
import 'package:ecom_app/home/special_for_you.dart';
import 'package:ecom_app/size_config.dart';
import 'package:flutter/material.dart';

import 'search_wigdet.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: getHeight(30),),
                Row(
                  children: [
                    const SearchWidget(),
                    SizedBox(width: getWidth(5),),
                    const IconContainer(icon: "assets/icons/Cart Icon.svg"),
                    const IconContainer(icon: "assets/icons/Bell.svg"),
                  ],
                ),
                SizedBox(height: getHeight(30),),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: getHeight(80),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0XFF4A3298),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("A Summer Surpise", style: TextStyle(color: Colors.white, fontSize: 12),),
                      Text("Cashback 20&", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 20),)
                    ],
                  ),
                ),
                const Categories(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Special for you", style: Theme.of(context).textTheme.displayMedium,),
                    const Text("See more")
                  ],
                ),
                SizedBox(height: getHeight(20),),
                const SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SpecialForYouContainer(
                        category: "Smartphone",
                        image: "assets/images/Image Banner 2.png",
                        numOfBrands: 18,
                      ),
                      SpecialForYouContainer(
                        category: "Fashion",
                        image: "assets/images/Image Banner 3.png",
                        numOfBrands: 24,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getHeight(30),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Special for you", style: Theme.of(context).textTheme.displayMedium,),
                    const Text("See more")
                  ],
                ),
                SizedBox(height: getHeight(20),),
                const PopularProducts(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}