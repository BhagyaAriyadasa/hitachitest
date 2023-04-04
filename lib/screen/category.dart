// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hitachi_test/screen/subCategoryList.dart';

import '../constant/colors.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  bool isSearchOpen = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height * 0.3,
            width: width,
            decoration: const BoxDecoration(gradient: BackgroundGradient),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      enableFeedback: false,
                      onPressed: () {},
                      icon: const ImageIcon(
                        AssetImage("asset/images/android-notifications.png"),
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 25,
                      ),
                    ),
                  ],
                ),
                isSearchOpen
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const ImageIcon(
                              AssetImage("asset/images/backarrow.png"),
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 25,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.05,
                            width: width * 0.7,
                            child: TextField(
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.black12,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide.none,
                                ),
                                label: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      ImageIcon(
                                        AssetImage("asset/images/search.png"),
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        size: 22,
                                      ),
                                      Text(
                                        " Search services",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 207, 207, 207),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSearchOpen = false;
                                });
                              },
                              child: const Text(
                                "Cancel",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const ImageIcon(
                              AssetImage("asset/images/backarrow.png"),
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 25,
                            ),
                          ),
                          const Text(
                            "Products Categories",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: textWhite,
                                fontFamily: "Roboto"),
                          ),
                          IconButton(
                            enableFeedback: false,
                            onPressed: () {
                              setState(() {
                                isSearchOpen = true;
                              });
                            },
                            icon: const ImageIcon(
                              AssetImage("asset/images/search.png"),
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                Expanded(
                  //   flex: ,
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: backgroundWhite),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: backgroundWhite,
                      ),
                      padding: const EdgeInsets.all(0.0),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 10,
                          padding: const EdgeInsets.all(2),
                          itemBuilder: (BuildContext context, int index) {
                            if (index == 0) {
                              return Container(
                                color: backgroundWhite,
                                width: 200,
                                height: 50,
                                child: Column(
                                  children: const [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("All Products categories"),
                                  ],
                                ),
                              );
                            }
                            return GestureDetector(
                              child: Card(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5,
                                          spreadRadius: 0,
                                          offset: Offset(0, 1)),
                                    ],
                                    color: textWhite,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Expanded(
                                        flex: 1,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 20.0,
                                              bottom: 20,
                                              left: 10,
                                              right: 10),
                                          child: ImageIcon(
                                            AssetImage("asset/images/bath.png"),
                                            color: Colors.black38,
                                            size: 18,
                                          ),
                                        ),
                                      ),
                                      const Expanded(
                                        flex: 6,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 20.0,
                                              bottom: 20,
                                              left: 10,
                                              right: 10),
                                          child: Text("Cooking Items"),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: const [
                                              SizedBox(
                                                height: 35,
                                              ),
                                              Text(
                                                "8 Products available",
                                                style: TextStyle(fontSize: 10),
                                              ),
                                            ]),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Get.to(SubcategoryList());
                              },
                            );
                          })),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
