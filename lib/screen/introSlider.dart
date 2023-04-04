// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:hitachi_test/screen/homeScreen.dart';
import 'package:hitachi_test/screen/loginScreen.dart';
import '../constant/colors.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  List FoundServiceList = [];
  List results = [];

  final List<String> imagesList = [
    'asset/images/grocery3.jpg',
    'asset/images/grocery4.jpg',
    'asset/images/grocery5.jpg',
    'asset/images/grocery6.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
            child: CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: true,
                height: size.height,
                autoPlayInterval: const Duration(seconds: 3),
              ),
              items: imagesList
                  .map(
                    (item) => Center(
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                        width: size.width,
                        height: size.height,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Container(
            width: size.width,
            height: size.height,
            color: CommonButton.withOpacity(0.3),
          ),
          Positioned(
            top: size.height * 0.8,
            // left: size.width * 0.08,
            child: Container(
              width: size.width,
              height: size.height,
              color: CommonButton.withOpacity(0.7),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Get your chance to order\nour quality products..',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 150,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 20,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 120,
                            height: 100,

                            decoration: const BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                topStart: Radius.circular(10),
                                topEnd: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                image: AssetImage("asset/images/grocery2.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            // child: Image.network(
                            //   ServiceList[index]["file"], fit: BoxFit.cover,
                            // ),
                          ),
                          Container(
                              width: 120,
                              height: 50,
                              decoration: const BoxDecoration(
                                color: CommonButton,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                              ),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Cooking Items",
                                  style: TextStyle(
                                    color: textBlack,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                        ],
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
                child: Row(
                  children: [
                    InkWell(
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                        ),
                      ),
                      onTap: () {
                        Get.to(const LoginScreen());
                      },
                    ),
                    const Spacer(),
                    InkWell(
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                        ),
                      ),
                      onTap: () {
                        Get.to(() => const HomeScreen());
                        // Get.to(const BottomNavBar());
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
