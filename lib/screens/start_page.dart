import 'package:flutter/material.dart';
import 'package:whatsapp/constants/constants.dart';
import 'package:whatsapp/screens/sing_up_number.dart';
import 'package:whatsapp/widgets/widgets.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ConstantsImages.assetImageStart,
            fit: BoxFit.cover,
          ),
        ),
        alignment: const Alignment(0, 0.6),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.white),
          child: Widgets.text('NEXT', size: 16, weight: FontWeight.w600),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const SingUpPhonePage()),
                (route) => false);
          },
        ),
      ),
    );
  }
}
