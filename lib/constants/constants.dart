import 'package:flutter/material.dart';

class ConstantsColor {
  static Color kPrimaryColorNumberBar = const Color(0xFFD1D1D6);
}

class ConstantsText {
  static const String kPrimaryNumberText =
      'Please confirm your country code and enter your phone number';
  static const String kPrimaryEmailText =
      'Please confirm your country enter your email and password';

  static const Icon iFlag = Icon(Icons.flag);
}

class ConstantsImages {
  static AssetImage assetImageStart =
      const AssetImage('assets/images/start.jpg');
  static AssetImage userIMG1 = const AssetImage("assets/images/chats/img1.jpg");
  static AssetImage userIMG2 = const AssetImage("assets/images/chats/img2.jpg");
  static AssetImage userIMG3 = const AssetImage("assets/images/chats/img3.jpg");
  static AssetImage userIMG4 = const AssetImage("assets/images/chats/img4.jpg");
  static AssetImage userIMG5 = const AssetImage("assets/images/chats/img5.jpg");
  static AssetImage userIMG6 = const AssetImage("assets/images/chats/img6.jpg");
  static AssetImage userIMG7 = const AssetImage("assets/images/chats/img7.jpg");
  static AssetImage userIMG8 = const AssetImage("assets/images/chats/img8.jpg");
  static AssetImage userIMG9 = const AssetImage("assets/images/chats/img9.jpg");
  static AssetImage userIMG10 =
      const AssetImage("assets/images/chats/img10.jpg");
  static AssetImage userIMG11 =
      const AssetImage("assets/images/chats/img11.jpg");

  static final List<String> _bottomBar = [
    'Status',
    'Call',
    'Camera',
    'Chats',
    'Setting',
  ];
  static int i = 0;
}
