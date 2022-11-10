import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../components/default_button.dart';
import '../constants.dart';
import '../helper/keyboard.dart';
import '../size_config.dart';

class SignUpScreen extends StatefulWidget {
  static String routeName = '/signup';

  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
  TextEditingController nameCtrlr = TextEditingController();
  TextEditingController emailCtrlr = TextEditingController();
  TextEditingController contactCtrlr = TextEditingController();
  TextEditingController courseCtrlr = TextEditingController();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? name, email, course;
  int? contact;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                'assets/images/logo.png',
                width: 96,
                height: 96,
              ),
              SizedBox(height: getProportionateScreenHeight(16)),
              // Text(
              //   'Welcome',
              //   style: headingStyle,
              // ),
              // SizedBox(height: getProportionateScreenHeight(16)),
              // Text(
              //   'Login',
              //   style: headingStyle1,
              // ),
              // SizedBox(height: getProportionateScreenHeight(24)),
              buildNameField(),
              SizedBox(height: getProportionateScreenHeight(16)),
              buildEmailField(),
              SizedBox(height: getProportionateScreenHeight(16)),
              buildContactField(),
              SizedBox(height: getProportionateScreenHeight(16)),
              buildCourseField(),
              SizedBox(height: getProportionateScreenHeight(16)),
              DefaultButton(
                press: () {
                  if (_formKey.currentState!.validate()) {
                    KeyboardUtil.hideKeyboard(context);

                    //TODO:SIGNUP

                  }
                },
                text: 'Signup',
              ),
              SizedBox(height: getProportionateScreenHeight(48)),
              Container(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                          text: 'Don\'t have an account?',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 18),
                          children: <TextSpan>[
                            // TextSpan(
                            //     text: ' Sign up',
                            //     style: const TextStyle(
                            //         color: Colors.blueAccent, fontSize: 18),
                            //     recognizer: TapGestureRecognizer()
                            //       ..onTap = () {
                            //         // navigate to SIgnup screen

                            //         Navigator.pushNamed(
                            //             context, SignUpScreen.routeName);
                            //       }),
                          ]),
                    ),
                  ))
            ],
          )),
        ),
      ),
    );
  }

  TextFormField buildNameField() {
    return TextFormField(
      controller: widget.nameCtrlr,
      textInputAction: TextInputAction.next,
      onSaved: (newValue) {
        name = newValue;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {});
        }
        //else if (emailValidatorRegExp.hasMatch(value)) {}

        return;
      },
      // // validator: (value) {
      // //   if (value!.isEmpty) {
      // //   }
      // //   // else if (!emailValidatorRegExp.hasMatch(value)) {
      // //     // return kInvalidEmailError;
      // //   }

      //   // return null;
      // },
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: 'Name',
        prefixIcon: const Icon(Icons.person),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: kPrimaryColor)),
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      controller: widget.emailCtrlr,
      textInputAction: TextInputAction.done,
      onSaved: (newValue) {
        email = newValue;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        }

        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'email',
        prefixIcon: const Icon(Icons.email),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(color: kPrimaryColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(color: kPrimaryColor),
        ),
      ),
    );
  }

  TextFormField buildContactField() {
    return TextFormField(
      controller: widget.contactCtrlr,
      textInputAction: TextInputAction.next,
      onSaved: (newValue) {
        contact:
        newValue;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {});
        }
        // else if (emailValidatorRegExp.hasMatch(value)) {}

        return;
      },
      // validator: (value) {
      //   if (value!.isEmpty) {
      //   } else if (!emailValidatorRegExp.hasMatch(value)) {
      //     return kInvalidEmailError;
      //   }

      //   return null;
      // },
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: 'Contact',
        prefixIcon: const Icon(Icons.phone_android_sharp),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: kPrimaryColor)),
      ),
    );
  }

  TextFormField buildCourseField() {
    return TextFormField(
      controller: widget.courseCtrlr,
      textInputAction: TextInputAction.next,
      onSaved: (newValue) {
        course:
        newValue;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {});
        }
        //  else if (emailValidatorRegExp.hasMatch(value)) {}

        return;
      },
      // validator: (value) {
      //   if (value!.isEmpty) {
      //   } else if (!emailValidatorRegExp.hasMatch(value)) {
      //     return kInvalidEmailError;
      //   }

      //   return null;
      // },
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Course',
        prefixIcon: const Icon(Icons.email),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: kPrimaryColor)),
      ),
    );
  }
}
