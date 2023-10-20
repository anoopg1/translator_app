import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_translator/core/constants.dart';
import 'package:language_translator/core/global_variables.dart';
import 'package:language_translator/presentation/home/widgets/bottom_modal_from_list_widget.dart';
import 'package:language_translator/presentation/home/widgets/bottom_modal_to_list.dart';
import 'package:language_translator/presentation/home/widgets/text_form_widget.dart';

final fromtextController = TextEditingController();
final totextController = TextEditingController();

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    //Loading all Languages from API
    // BlocProvider.of<HomeBloc>(context).add(HomeEvent.getAllLanguages());

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            kheight14,

            //Header

            const Text(
              "Text Translator",
              style: TextStyle(fontSize: 20),
            ),
            kheight14,
            const Divider(
              color: Colors.white,
            ),
            //Buttons to select language
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //From Button
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey)),
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.grey.shade700,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(14),
                                  topRight: Radius.circular(14))),
                          context: context,
                          builder: (context) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("From"),
                                kheight14,
                                TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.search),
                                      prefixIconColor: Colors.grey.shade400,
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey.shade400))),
                                ),
                                const Divider(),
                                Expanded(
                                    child: ListView.separated(
                                        itemBuilder: (context, index) {
                                          return BottomModalFromListWidget(
                                            language:
                                                "eng",
                                          );
                                        },
                                        separatorBuilder: (context, index) =>
                                            kheight14,
                                        itemCount: 11))
                              ],
                            ),
                          ),
                        );
                      },
                      child: Text("fromLanguage")),
                ),

                // icon
                const Column(
                  children: [
                    Icon(
                      Icons.arrow_forward,
                      size: 12,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 12,
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey)),
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.grey.shade700,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(14),
                                  topRight: Radius.circular(14))),
                          context: context,
                          builder: (context) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("To"),
                                kheight14,
                                TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.search),
                                      prefixIconColor: Colors.grey.shade400,
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey.shade400))),
                                ),
                                const Divider(),
                                Expanded(
                                    child: ListView.separated(
                                        itemBuilder: (context, index) =>
                                            BottomModalToListWidget(
                                              language: "Eng",
                                            ),
                                        separatorBuilder: (context, index) =>
                                            kheight14,
                                        itemCount: 11))
                              ],
                            ),
                          ),
                        );
                      },
                      child: Text("toLanguage")),
                ),
              ],
            ),
            kheight14,
            //translate from textfield
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Translate from $fromLanguage"),
            ),
            kheight14,
            Center(
                child: TextFieldWidget(
              text: fromtextController.text,
            )),
            kheight14,
            //translate to textfield
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Translate to $toLanguage"),
            ),
            kheight14,
            const Center(child: TextFieldWidget())
          ],
        ),
      )),
    );
  }
}
