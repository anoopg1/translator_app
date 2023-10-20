import 'package:flutter/material.dart';
import 'package:language_translator/core/global_variables.dart';

class BottomModalFromListWidget extends StatelessWidget {
  const BottomModalFromListWidget({
    super.key,
    required this.language,
  });

  final String language;
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        height: MediaQuery.of(context).size.height * 0.10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.grey.shade900,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            top: 25,
            bottom: 5,
          ),
          child: Text(language),
        ),
      ),
    );
  }
}
