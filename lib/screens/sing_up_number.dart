import 'package:flutter/material.dart';
import 'package:whatsapp/constants/constants.dart';
import 'package:whatsapp/screens/chats_page.dart';
import 'package:whatsapp/screens/sing_up_email.dart';
import 'package:whatsapp/widgets/widgets.dart';

class SingUpPhonePage extends StatefulWidget {
  const SingUpPhonePage({Key? key}) : super(key: key);

  @override
  _SingUpPhonePageState createState() => _SingUpPhonePageState();
}

class _SingUpPhonePageState extends State<SingUpPhonePage> {
  String? _city;
  final TextEditingController _controller1 = TextEditingController(text: '+');
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();

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
                        MaterialPageRoute(builder: (_) => const ChatsPage()),
                        (route) => false),
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
                      ConstantsText.kPrimaryNumberText,
                      size: 15,
                    ),
                  ),
                  Container(
                    height: 51,
                    alignment: Alignment.bottomCenter,
                    color: Colors.black,
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.5,
                      color: Colors.white,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          menuMaxHeight: 200,
                          icon: const Icon(Icons.navigate_next),
                          items: [
                            Widgets.dropDownMenuItem(
                                ConstantsText.iFlag, 'UZ', 'uz', size),
                            Widgets.dropDownMenuItem(
                                ConstantsText.iFlag, 'RU', 'ru', size),
                            Widgets.dropDownMenuItem(
                                ConstantsText.iFlag, 'ENG', 'eng', size),
                            Widgets.dropDownMenuItem(
                                ConstantsText.iFlag, 'CHINA', 'china', size),
                            Widgets.dropDownMenuItem(
                                ConstantsText.iFlag, 'USA', 'usa', size),
                            Widgets.dropDownMenuItem(
                                ConstantsText.iFlag, 'INDIA', 'india', size),
                            Widgets.dropDownMenuItem(
                                ConstantsText.iFlag, 'TURK', 'turk', size),
                            Widgets.dropDownMenuItem(
                                ConstantsText.iFlag, 'KZ', 'kz', size),
                          ],
                          hint: const Text('City...'),
                          onChanged: (data) {
                            setState(() {
                              _city = data.toString();
                            });
                          },
                          value: _city,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Widgets.textFormField(TextInputAction.next,
                            _controller1, TextInputType.phone, 'code'),
                      ),
                      Container(
                        height: 52,
                        width: 0.5,
                        color: Colors.black,
                      ),
                      Expanded(
                        flex: 6,
                        child: Widgets.textFormField(
                          TextInputAction.next,
                          _controller2,
                          TextInputType.number,
                          "phone number",
                        ),
                      ),
                    ],
                  ),
                  Widgets.textFormField(
                    TextInputAction.done,
                    _controller3,
                    TextInputType.visiblePassword,
                    'password',
                    obscureText: true,
                  ),
                  TextButton(
                    child: const Text('Sing up to email'),
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => const SingUpEmailPage()),
                          (Route<dynamic> route) => false);
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
