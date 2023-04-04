import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:hitachi_test/screen/homeScreen.dart';
import 'package:hitachi_test/screen/signUp.dart';
import '../constant/colors.dart';
import '../constant/mainButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      decoration: const BoxDecoration(gradient: BackgroundGradient),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: height / 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 80,
                          width: 80,
                          child: Image.asset(
                            "asset/images/logo.png",
                            fit: BoxFit.cover,
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Login",
                        style: TextStyle(
                            color: textWhite,
                            fontFamily: "Trebuchet MS",
                            fontSize: 24,
                            fontWeight: FontWeight.w500))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: height / 20),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Container(
                        width: width,
                        height: height,
                        decoration: const BoxDecoration(
                          color: backgroundWhite,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const LoginForm(),
                      ),
                    ]),
                  ),
                ),
              ]),
            ),
          )),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  bool isLoading = false;
  bool typing = true;
  bool _isObscure = true;

  bool checkedValue = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Container(
            margin: const EdgeInsets.only(left: 35, right: 35, top: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Welcome to the Grocery",
                      style: TextStyle(
                          fontSize: 18,
                          color: textBlack,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Trebuchet MS"),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.010,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Please enter your email and password",
                      style: TextStyle(
                          fontSize: 11,
                          color: textBlack,
                          fontFamily: "Trebuchet MS"),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                TextFormField(
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(
                        fontFamily: "Trebuchet MS",
                        fontSize: 16,
                        color: textGrey.withOpacity(0.4),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: TextFeild)),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: TextFeild)),
                      errorBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: errorRed),
                      ),
                      focusedErrorBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: errorRed),
                      ),
                      isDense: true,
                      border: InputBorder.none),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return "Email can't be empty";
                    } else {
                      return null;
                    }
                  },
                  onChanged: (String? text) {},
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                TextFormField(
                  obscureText: _isObscure,
                  style: const TextStyle(fontSize: 15),
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                          fontFamily: "Trebuchet MS",
                          fontSize: 16,
                          color: textGrey.withOpacity(0.4),
                          fontWeight: FontWeight.bold),
                      suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: textGrey.withOpacity(0.4),
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          }),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: TextFeild)),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: TextFeild)),
                      errorBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: errorRed),
                      ),
                      focusedErrorBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: errorRed),
                      ),
                      isDense: true,
                      border: InputBorder.none),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                        title: const Text(
                          "Remember me",
                          style: TextStyle(
                              color: textBlack,
                              fontFamily: "Trebuchet MS",
                              fontSize: 12),
                        ),
                        activeColor: textGreen,
                        tileColor: textGreen,

                        value: checkedValue,
                        onChanged: (newValue) {
                          FocusManager.instance.primaryFocus?.unfocus();
                          setState(() {
                            if (isLoading != true) {
                              checkedValue = newValue!;
                              print(newValue);
                            }
                          });
                        },
                        contentPadding: const EdgeInsets.only(left: 0, top: 0),
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        "Forget password ?",
                        style: TextStyle(
                            color: textBlack,
                            fontFamily: "Trebuchet MS",
                            fontSize: 12),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                const SizedBox(height: 10),
                isLoading
                    ? const SpinKitDualRing(
                        color: MainGreen,
                        size: 40,
                      )
                    : GestureDetector(
                        child: const MainButton("Login"),
                        onTap: () async {
                          Get.to(const HomeScreen());
                        },
                      ),
                const SizedBox(height: 10),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Or Sign In With",
                        style: TextStyle(
                          fontSize: 12,
                          color: textBlack,
                          fontFamily: "Trebuchet MS",
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: width - 120,
                  height: height * 0.06,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: textBlack),
                    color: backgroundWhite,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.apple,
                        size: 24.0,
                      ),
                      Text(
                        "Sign in with Apple",
                        style: TextStyle(
                          fontSize: 12,
                          color: textBlack,
                          fontFamily: "Trebuchet MS",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: width * 0.32,
                      height: height * 0.06,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: GoogleButton,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'asset/images/googleicon.png',
                            height: 27,
                            width: 27,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Container(
                      width: width * 0.32,
                      height: height * 0.06,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: FbButton,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'asset/images/fbl.png',
                            height: 28,
                            width: 28,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Don't have an account please",
                      style: TextStyle(
                          color: textBlack,
                          fontFamily: "Trebuchet MS",
                          fontSize: 14),
                    ),
                    SizedBox(
                      width: width * 0.001,
                    ),
                    TextButton(
                      child: const Text(
                        "Sign up",
                        style: TextStyle(color: textGreen, fontSize: 14),
                      ),
                      onPressed: () {
                        Get.to(() => const SignUp());
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
