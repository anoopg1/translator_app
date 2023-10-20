import 'package:flutter/material.dart';

import 'package:language_translator/presentation/home/screen_home.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    int deviceheight = MediaQuery.of(context).size.height.toInt();
    return Container(
      height: deviceheight * 0.30,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          controller: fromtextController,
          onChanged: (value) {},
          style: TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          maxLength: 2300,
          maxLines: 11,
        ),
      ),
    );
  }
}
