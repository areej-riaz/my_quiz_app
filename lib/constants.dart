import 'package:my_quiz_app/size_config.dart';

import 'package:flutter/material.dart';



const kPrimaryColor = Color(0xFFFEBC2F);

const kPrimaryLightColor = Color(0xFFFFECDF);

const kPrimaryGradientColor = LinearGradient(

  begin: Alignment.topLeft,

  end: Alignment.bottomRight,

  colors: [Color(0xFFFEBC2F), Color(0xFFD82E2F)],

);

const kTextColor = Color(0xFF757575);

final introTextStyle = TextStyle(

  fontFamily: 'Poppins-Bold',

  fontSize: getProportionateScreenHeight(16),

  color: const Color(0xffFFFFFF),

  fontWeight: FontWeight.w300,

);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(

  fontSize: getProportionateScreenWidth(28),

  fontWeight: FontWeight.bold,

  color: Colors.black,

  height: 1.5,

);

final headingStyle1 = TextStyle(

  fontSize: getProportionateScreenWidth(22),

  fontWeight: FontWeight.w500,

  color: Colors.black87,

  height: 1.5,

);

final headingStyle2 = TextStyle(

  fontSize: getProportionateScreenWidth(16),

  fontWeight: FontWeight.w300,

  color: Colors.black87,

  height: 1.5,

);



const defaultDuration = Duration(milliseconds: 250);

// Form Error

final RegExp emailValidatorRegExp =

    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

const String kEmailNullError = "Please Enter your email";

const String kInvalidEmailError = "Please Enter Valid Email";

const String kPassNullError = "Please Enter your password";

const String kShortPassError = "Password is too short";

const String kMatchPassError = "Passwords don't match";

const String kNamelNullError = "Please Enter your name";

const String kPhoneNumberNullError = "Please Enter your phone number";