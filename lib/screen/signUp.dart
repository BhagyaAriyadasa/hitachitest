import 'dart:io';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../constant/colors.dart';
import '../constant/mainButton.dart';
import 'loginScreen.dart';

File? profileImage;

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: backgroundWhite,
        body: GestureDetector(
            child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/images/download.png"),
              fit: BoxFit.fill,
              alignment: Alignment.topCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: height * 0.1,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: width * 0.05),
                  child: const Text('Sign Up',
                      style: TextStyle(fontSize: 30, color: textWhite)),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                width: width,
                height: height / 0.5,
                decoration: const BoxDecoration(
                  color: backgroundWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const Center(child: SignUpForm()),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Center(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(
                              fontSize: width * 0.04,
                              color: textBlack,
                            )),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()),
                                );
                              },
                            text: "Log In",
                            style: TextStyle(
                              fontSize: width * 0.04,
                              color: MainGreen,
                            )),
                      ])),
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Privacy Policy', //title
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: textGrey,
                              fontSize: width * 0.035), //aligment
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ]),
          ),
        )));
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  bool _isObscure = true;
  bool _confirmPass = true;
  bool isLoading = false;
  bool pointerIgnore = false;
  bool typing = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("Username",
                      style: TextStyle(
                        fontSize: 17,
                        color: textBlack,
                      )),
                ],
              ),
              SizedBox(
                height: height * 0.005,
              ),
              TextFormField(
                style: const TextStyle(
                  fontSize: 15,
                ),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    fillColor: const Color(0XFFC4C4C4).withOpacity(.3),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                    isDense: true,
                    border: InputBorder.none),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("Email",
                      style: TextStyle(
                        fontSize: 17,
                        color: textBlack,
                        // fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              SizedBox(
                height: height * 0.005,
              ),
              TextFormField(
                style: const TextStyle(
                  fontSize: 15,
                ),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    fillColor: Color(0XFFC4C4C4).withOpacity(.3),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                    isDense: true,
                    border: InputBorder.none),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("Mobile Number",
                      style: TextStyle(
                        fontSize: 17,
                        color: textBlack,
                      )),
                ],
              ),
              SizedBox(
                height: height * 0.005,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    fillColor: Color(0XFFC4C4C4).withOpacity(.3),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                    isDense: true,
                    border: InputBorder.none),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("Password",
                      style: TextStyle(
                        fontSize: 17,
                        color: textBlack,
                      )),
                ],
              ),
              SizedBox(
                height: height * 0.005,
              ),
              TextFormField(
                obscureText: _isObscure,
                style: const TextStyle(fontSize: 15),
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                          color: MainGreen,
                        ),
                        onPressed: () {}),
                    fillColor: const Color(0XFFC4C4C4).withOpacity(.3),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                    isDense: true,
                    border: InputBorder.none),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("Confirm Password",
                      style: TextStyle(
                        fontSize: 17,
                        color: textBlack,
                        // fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              SizedBox(
                height: height * 0.005,
              ),
              TextFormField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        icon: Icon(
                          _confirmPass
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: MainGreen,
                        ),
                        onPressed: () {}),
                    fillColor: const Color(0XFFC4C4C4).withOpacity(.3),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                    isDense: true,
                    border: InputBorder.none),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: GestureDetector(
                  child: MainButton("SignUp"),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
