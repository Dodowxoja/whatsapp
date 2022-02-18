import 'package:flutter/material.dart';
import 'package:whatsapp/constants/constants.dart';
import 'package:whatsapp/screens/chats_page.dart';
import 'package:whatsapp/screens/sing_up_number.dart';
import 'package:whatsapp/widgets/widgets.dart';

class SingUpEmailPage extends StatefulWidget {
  const SingUpEmailPage({
    Key? key,
  }) : super(key: key);

  @override
  _SingUpEmailPageState createState() => _SingUpEmailPageState();
}

class _SingUpEmailPageState extends State<SingUpEmailPage> {
  String? _city;
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double size = (MediaQuery.of(context).size.width * 0.9);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: ConstantsColor.kPrimaryColorNumberBar.withOpacity(0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.2),
                  title: Widgets.text('Phone number',
                      weight: FontWeight.bold, size: 16),
                  trailing: TextButton(
                    child: Widgets.text('Done', weight: FontWeight.bold),
                    onPressed: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatsPage()),
                      (Route<dynamic> route) => false,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 12,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    child: Widgets.text(
                      ConstantsText.kPrimaryEmailText,
                      size: 15,
                    ),
                  ),
                  Widgets.textFormField(TextInputAction.next, _controller1,
                      TextInputType.emailAddress, 'email'),
                  Widgets.textFormField(TextInputAction.done, _controller2,
                      TextInputType.visiblePassword, "password",
                      obscureText: true),
                  TextButton(
                    child: const Text('Sing up to phone'),
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const SingUpPhonePage()),
                        (Route<dynamic> route) => false,
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
