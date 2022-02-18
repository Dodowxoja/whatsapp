import 'package:flutter/material.dart';
import 'package:whatsapp/screens/call_page.dart';
import 'package:whatsapp/screens/camera_page.dart';
import 'package:whatsapp/screens/chats_page.dart';
import 'package:whatsapp/screens/setting_page.dart';
import 'package:whatsapp/screens/sing_up_email.dart';
import 'package:whatsapp/screens/sing_up_number.dart';
import 'package:whatsapp/screens/start_page.dart';
import 'package:whatsapp/screens/status_page.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const StartPage()); // START
      case '/number':
        return MaterialPageRoute(
            builder: (_) => const SingUpPhonePage()); // KIRISH QISMI NUMBER
      case '/email':
        return MaterialPageRoute(
            builder: (_) => const SingUpEmailPage()); // KIRISH QISMI EMAIL
      case '/status':
        return MaterialPageRoute(builder: (_) => const StatusPage()); //STATUS
      case '/call':
        return MaterialPageRoute(builder: (_) => const CallPage()); // CALL
      case '/camera':
        return MaterialPageRoute(builder: (_) => const CameraPage()); //CAMERA
      case '/chat':
        return MaterialPageRoute(builder: (_) => const ChatsPage()); // CHAT
      case '/setting':
        return MaterialPageRoute(builder: (_) => const SettingPage()); //SETTING
    }
  }
}
