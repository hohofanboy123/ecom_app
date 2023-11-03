import 'package:ecom_app/boarding/boarding_model.dart';
import 'package:ecom_app/constants.dart';
import 'package:ecom_app/route_name.dart';
import 'package:ecom_app/size_config.dart';
import 'package:flutter/material.dart';

import '../custom_btn.dart';

class BoardingPage extends StatefulWidget {
  const BoardingPage({super.key});

  @override
  _BoardingPageState createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child:
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child:
                    PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          currentPage = value;
                        });
                      },
                      itemCount: boardingModelList.length,
                      itemBuilder: (context, index) => 
                        Column(
                          children: [
                            const Spacer(),
                            Text(
                              boardingModelList[index].title!,
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            Text(
                              boardingModelList[index].body!,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const Spacer(flex: 2,),
                            Image.asset(
                              boardingModelList[index].image!,
                              height: getHeight(260),
                              width: getWidth(230),
                            )
                          ],
                        ),
                    ),
                ),
                Expanded(
                  flex: 2,
                  child: 
                    Column(
                      children: [
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: 
                            List.generate(
                              boardingModelList.length,
                              (index) => AnimatedContainer(
                                margin: const EdgeInsets.only(right: 5),
                                duration: durationOfAnimation,
                                height: 7,
                                width: currentPage == index ? 20 : 7,
                                decoration: 
                                  BoxDecoration(
                                    color: currentPage == index ? mainColor : Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                              )
                            )
                        ),
                        const Spacer(flex: 3,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
                          child: CustomButton(
                            text: "Continue",
                            press: (){
                              Navigator.pushNamed(context, RouteNames.signIn);
                            },
                          ),
                        ),
                        const Spacer(),
                      ],
                    )
                )
              ],
            ),
        ),
      ),
    );
  }
}
