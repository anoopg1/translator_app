import 'package:flutter/material.dart';

class BottomModalToListWidget extends StatefulWidget {
  const BottomModalToListWidget({
    super.key,
    required this.language,
    required this.context,
    required this.onLanguageSelected,
  });

  final String language;
  final BuildContext context;
  final Function(String) onLanguageSelected;

  @override
  State<BottomModalToListWidget> createState() =>
      _BottomModalToListWidgetState();
}

class _BottomModalToListWidgetState extends State<BottomModalToListWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onLanguageSelected(widget.language);
        Navigator.pop(context);
      },
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
          child: Text(widget.language),
        ),
      ),
    );
  }
}