import 'package:flutter/material.dart';
import 'package:whatsapp/constants/constants.dart';
import 'package:whatsapp/widgets/widgets.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: ConstantsColor.kPrimaryColorNumberBar.withOpacity(0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Widgets.text(
                        'Edit',
                        color: const Color(0xFF007AFF),
                        size: 17,
                      ),
                    ),
                    Container(
                      width: 62,
                      alignment: Alignment.centerLeft,
                      child: Widgets.text(
                        'Chats',
                        weight: FontWeight.w900,
                        size: 17,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.edit_outlined,
                        color: Color(0xFF007AFF),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 6),
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Widgets.textButton('Broadcast Lists', 17),
                  Widgets.textButton('New Group', 17),
                ],
              ),
            ),
            Expanded(
              flex: 12,
              child: SizedBox(
                height: double.infinity,
                child: ListView(
                  children: [
                    Widgets.user(ConstantsImages.userIMG1, 'Leyla Maisy', 'Hi',
                        '13/02/2022'),
                    Widgets.user(ConstantsImages.userIMG2, 'Karen Castillo',
                        'What kind of strategy is better?', '13/02/2022'),
                    Widgets.user(ConstantsImages.userIMG3, 'SAURABH THAKUR',
                        'Bro, I have a good idea! ', '12/02/2022'),
                    Widgets.user(
                        ConstantsImages.userIMG4,
                        'STAR BUCKY',
                        'Actually I wanted to check with you about your online business plan on our…',
                        '10/02/2022'),
                    Widgets.user(
                        ConstantsImages.userIMG5,
                        'Martha Craig',
                        'Welcome, to make design process faster, look at Pixsellz',
                        '8/02/2022'),
                    Widgets.user(ConstantsImages.userIMG6, 'Tabitha Potter',
                        'Ok, have a good trip!', '8/02/2022'),
                    Widgets.user(ConstantsImages.userIMG7, 'Maisy Humphrey',
                        'What kind of strategy is better?', '5/02/2022'),
                    Widgets.user(ConstantsImages.userIMG8, 'MAHALAR SUBON',
                        'Yes, 2pm is awesome', '2/02/2022'),
                    Widgets.user(ConstantsImages.userIMG9, 'Jamie Franco',
                        'Very Good', '30/01/2022'),
                    Widgets.user(ConstantsImages.userIMG10, 'Kieron Dotson',
                        'Hello', '30/01/2022'),
                    Widgets.user(ConstantsImages.userIMG11, 'Humphrey Maisy',
                        'Yes, 2pm is awesome', '29/01/2022'),
                  ],
                ),
              ),
            ),
          ],
        ),
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
          Navigator.pushNamed(context, typePage);
        });
  }
}
