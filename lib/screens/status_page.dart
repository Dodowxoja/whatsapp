import 'package:flutter/material.dart';
import 'package:whatsapp/constants/constants.dart';
import 'package:whatsapp/widgets/widgets.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Status'),
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            bottonButtom(Icons.radio_button_off_sharp, 'Status', 0, '/status'),
            bottonButtom(Icons.call_outlined, 'Call', 1, '/call'),
            bottonButtom(Icons.camera_alt_outlined, 'Camera', 2, '/camera'),
            bottonButtom(Icons.chat_bubble, 'Chats', 3, '/chat'),
            bottonButtom(Icons.settings, 'Setting', 4, '/setting'),
          ],
        ),
      ),
    );
  }

  ElevatedButton bottonButtom(
      IconData icon, String text, int index, String typePage) {
    return ElevatedButton(
        autofocus: true,
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(double.infinity, 50),
            elevation: 0,
            primary: Colors.transparent,
            onPrimary: Colors.transparent,
            onSurface: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: ConstantsImages.i == index
                  ? const Color(0xFF007AFF)
                  : const Color(0xFF545458),
            ),
            Widgets.text(
              text,
              size: 10,
              color: ConstantsImages.i == index
                  ? const Color(0xFF007AFF)
                  : const Color(0xFF545458),
            ),
          ],
        ),
        onPressed: () {
          setState(() => ConstantsImages.i = index);
          Navigator.restorablePushNamed(context, typePage);
        });
  }
}
