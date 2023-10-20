import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_translator/bloc/home/home_bloc.dart';

import 'package:language_translator/presentation/home/screen_home.dart';

class FromTextFieldWidget extends StatelessWidget {
  const FromTextFieldWidget({
    super.key,
    required this.fromLanguage,
    required this.toLanguage,
  });
  final String fromLanguage;
  final String toLanguage;
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
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return TextField(
                controller: fromtextController,
                onChanged: (value) async {
                  BlocProvider.of<HomeBloc>(context).add(
                      HomeEvent.translateText(
                          text: fromtextController.text,
                          from: fromLanguage,
                          to: toLanguage));
                  totextController.text = state.translatedText;
                },
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                maxLength: 2300,
                maxLines: 11,
              );
            },
          )),
    );
  }
}
