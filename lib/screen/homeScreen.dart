// ignore_for_file: file_names, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';

import '../constant/colors.dart';
import 'hiddenDarwer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool hasNotCompanies = false;

  @override
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: const HiddenDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                width: width,
                height: height * 0.3,
                child: Image.asset("asset/images/grocery2.jpeg"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: height * 0.135,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: GestureDetector(
                      child: Row(
                        children: [
                          Container(
                              width: width * 0.3,
                              margin: const EdgeInsets.only(bottom: 5, top: 5),
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 192, 186, 186),
                                      blurRadius: 10,
                                      spreadRadius: 1,
                                      offset: Offset(4, 4)),
                                ],
                                color: textWhite,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Rice",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10, top: 10),
                        child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Container(
                                margin: EdgeInsets.all(4),
                                width: width * 0.9,
                                height: height * 0.3,
                                //   alignment: Alignment.center,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child:
                                      Image.asset("asset/images/grocery1.jpeg"),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Container(
                                  height: height * 0.18,
                                  width: width * 0.6,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Text(
                                      "Order Our Fresh Products",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                  )),
                            ]),
                      )
                    ],
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
