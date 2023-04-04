import 'package:flutter/material.dart';

import 'colors.dart';

class MainButton extends StatelessWidget {
  final String btnText;
  // ignore: use_key_in_widget_constructors
  const MainButton(this.btnText);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        child: _buildBtn(btnText, context),
      ),
    );
  }

  Widget _buildBtn(String btnText, BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width - 120,
      height: height * 0.07,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: CommonButton,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
        child: Text(
          btnText,
          style: const TextStyle(
            fontSize: 17,
            //fontWeight: FontWeight.w500,
            color: Colors.white,
            fontFamily: "Trebuchet MS",
          ),
        ),
      ),
    );
  }
}
