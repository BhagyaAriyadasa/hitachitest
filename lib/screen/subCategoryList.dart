// ignore_for_file: file_names, avoid_print, prefer_typing_uninitialized_variables, avoid_returning_null_for_void

import 'package:flutter/material.dart';

import '../constant/colors.dart';

class SubcategoryList extends StatefulWidget {
  const SubcategoryList({Key? key}) : super(key: key);

  @override
  State<SubcategoryList> createState() => _SubcategoryListState();
}

class _SubcategoryListState extends State<SubcategoryList> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppbarColor4,
      appBar: AppBar(
        backgroundColor: AppbarColor1,
        flexibleSpace: Container(
          decoration: const BoxDecoration(gradient: BackgroundGradient),
        ),
        elevation: 0,
        toolbarHeight: height * 0.13,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: textWhite,
            size: width * 0.06,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Center(
          child: Text(
            "Cooking Items",
            style: TextStyle(
                color: textWhite, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.notifications,
                  color: backgroundWhite,
                  size: width * 0.06,
                ),
                const SizedBox(
                  height: kToolbarHeight / 4,
                ),
                Image.asset(
                  'asset/images/search.png',
                  color: textWhite,
                  height: height * 0.03,
                  width: height * 0.03,
                ),
                const SizedBox(
                  height: kToolbarHeight / 2,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "All Sub Categories Of Cooking Items",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textBlack.withOpacity(0.8),
                    fontSize: width * 0.038,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: width * 0.01),
                child: SizedBox(
                  height: width * 0.22,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(
                          left: width * 0.005,
                          right: width * 0.005,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                  width: width * 0.3,
                                  height: width * 0.18,
                                  padding: EdgeInsets.all(width * 0.03),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF5EEEE),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.6),
                                        blurRadius: 4,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Rice",
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: textBlack.withOpacity(0.8),
                                            fontSize: width * 0.038,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: width * 0.02, right: width * 0.008),
                          child: Container(
                            height: height * 0.2,
                            width: width - 32,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.6),
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: width * 0.32,
                                  width: width * 0.32,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(0),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(0)),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'asset/images/grocery3.jpg'),
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: width * 0.009, right: width * 0.02),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: width * 0.55,
                                            child: Text(
                                              "Sudu Kakulu",
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  fontSize: width * 0.038,
                                                  color: textBlack
                                                      .withOpacity(0.65),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: width * 0.018,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: width * 0.55,
                                            child: Row(
                                              children: [
                                                ShaderMask(
                                                    blendMode:
                                                        BlendMode.srcATop,
                                                    shaderCallback: (bounds) =>
                                                        const LinearGradient(
                                                          begin:
                                                              Alignment.topLeft,
                                                          end: Alignment
                                                              .bottomRight,
                                                          colors: [
                                                            StarColor1,
                                                            StarColor2
                                                          ],
                                                        ).createShader(bounds),
                                                    child: Icon(Icons.star,
                                                        size: width * 0.05)),
                                                SizedBox(
                                                  width: width * 0.01,
                                                ),
                                                Text(
                                                  "75%",
                                                  style: TextStyle(
                                                      fontSize: width * 0.03,
                                                      color: textBlack
                                                          .withOpacity(0.8)),
                                                ),
                                                SizedBox(
                                                  width: width * 0.1,
                                                ),
                                                Text(
                                                  "85Kg Available",
                                                  style: TextStyle(
                                                      fontSize: width * 0.03,
                                                      color: textBlack
                                                          .withOpacity(0.8)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: width * 0.025,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: width * 0.55,
                                            child: Text(
                                              "This rice is provided by Anuradapura",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  fontSize: width * 0.03,
                                                  color: textBlack
                                                      .withOpacity(0.65),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: width * 0.028,
                                      ),
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height: width * 0.07,
                                              width: width * 0.17,
                                              child: ElevatedButton(
                                                  style: ButtonStyle(
                                                      foregroundColor:
                                                          MaterialStateProperty.all<Color>(
                                                              ButtonGreen),
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all<Color>(
                                                                  ButtonGreen),
                                                      shape: MaterialStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ))),
                                                  onPressed: () => null,
                                                  child: Text("Buy",
                                                      style: TextStyle(
                                                          fontSize:
                                                              width * 0.033,
                                                          color: textBlack
                                                              .withOpacity(
                                                                  0.8)))),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
