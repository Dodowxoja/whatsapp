import 'package:flutter/material.dart';

class Widgets {
  static text(String type,
          {FontWeight weight = FontWeight.normal,
          double size = 14,
          Color color = Colors.black}) =>
      Text(
        type,
        style: TextStyle(fontWeight: weight, fontSize: size, color: color),
        textAlign: TextAlign.center,
      );

  static DropdownMenuItem<String> dropDownMenuItem(
      Icon icon, String cityName, String city, double sizeW) {
    return DropdownMenuItem(
      child: SizedBox(
        width: sizeW,
        child: Row(
          children: [
            icon,
            Widgets.text(cityName),
          ],
        ),
      ),
      value: city,
    );
  }

  static Container textFormField(
      TextInputAction textInputAction,
      TextEditingController controller,
      TextInputType textInputType,
      String type,
      {bool obscureText = false}) {
    return Container(
      height: 52,
      color: Colors.black,
      alignment: Alignment.center,
      child: Container(
        alignment: Alignment.center,
        height: 51,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            autofocus: false,
            textInputAction: textInputAction,
            controller: controller,
            keyboardType: textInputType,
            obscureText: obscureText,
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              hintText: type,
              fillColor: Colors.transparent,
              filled: true,
            ),
          ),
        ),
      ),
    );
  }

  static TextButton textButton(String text, double size) {
    return TextButton(
      onPressed: () {},
      child: Widgets.text(text, size: size, color: const Color(0xFF007AFF)),
    );
  }

  static ListTile user(
    AssetImage image,
    String nameText,
    String chatText,
    String dataText,
  ) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: image),
      title: Text(nameText),
      subtitle: Text(chatText),
      trailing: Text(dataText),
    );
  }
}
