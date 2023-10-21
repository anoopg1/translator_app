import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_translator/bloc/home/home_bloc.dart';
import 'package:language_translator/core/constants.dart';
import 'package:language_translator/core/global_variables.dart';
import 'package:language_translator/presentation/home/widgets/bottom_modal_from_list_widget.dart';
import 'package:language_translator/presentation/home/widgets/bottom_modal_to_list.dart';
import 'package:language_translator/presentation/home/widgets/from_text_form_widget.dart';
import 'package:language_translator/presentation/home/widgets/to_text_form_widget.dart';

final fromtextController = TextEditingController();
final totextController = TextEditingController();

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext homecontext) {
    // Loading all Languages from API
    BlocProvider.of<HomeBloc>(homecontext)
        .add(const HomeEvent.getAllLanguages());

    void onFromLanguageSelected(String selectedLanguage) {
      setState(() {
        fromLanguage = selectedLanguage;
        fromText = selectedLanguage;
      });
    }

    void onToLanguageSelected(String selectedLanguage) {
      setState(() {
        toLanguage = selectedLanguage;
        toText = selectedLanguage;
      });
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              kheight14,
              const Text(
                "Text Translator",
                style: TextStyle(fontSize: 20),
              ),
              kheight14,
              const Divider(
                color: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(homecontext).size.width * 0.35,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.grey),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.grey.shade700,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight: Radius.circular(14),
                            ),
                          ),
                          context: homecontext,
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
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
                                  ),
                                ),
                                const Divider(),
                                Expanded(
                                  child: BlocBuilder<HomeBloc, HomeState>(
                                    builder: (context, state) {
                                      return ListView.separated(
                                        itemBuilder: (context, index) {
                                          if (state.languages.isNotEmpty) {
                                            return BottomModalFromListWidget(
                                              language: state.languages[index]
                                                  .toString(),
                                              context: homecontext,
                                              onLanguageSelected:
                                                  onFromLanguageSelected,
                                            );
                                          } else {
                                            return const Center(
                                              child:
                                                  CircularProgressIndicator(),
                                            );
                                          }
                                        },
                                        separatorBuilder: (context, index) =>
                                            kheight14,
                                        itemCount: state.languages.length,
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      child: Text(fromLanguage),
                    ),
                  ),
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
                    width: MediaQuery.of(homecontext).size.width * 0.35,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.grey),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.grey.shade700,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight: Radius.circular(14),
                            ),
                          ),
                          context: homecontext,
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
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
                                  ),
                                ),
                                const Divider(),
                                Expanded(
                                  child: BlocBuilder<HomeBloc, HomeState>(
                                    builder: (context, state) {
                                      if (state.languages.isNotEmpty) {
                                        return ListView.separated(
                                          itemBuilder: (context, index) =>
                                              BottomModalToListWidget(
                                            language: state.languages[index]
                                                .toString(),
                                            onLanguageSelected:
                                                onToLanguageSelected,
                                            context: context,
                                          ),
                                          separatorBuilder: (context, index) =>
                                              kheight14,
                                          itemCount: state.languages.length,
                                        );
                                      } else {
                                        return const Center(
                                            child: CircularProgressIndicator());
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      child: Text(toLanguage),
                    ),
                  ),
                ],
              ),
              kheight14,
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Translate from $fromText"),
              ),
              kheight14,
              Center(
                child: FromTextFieldWidget(
                  fromLanguage: fromLanguage,
                  toLanguage: toLanguage,
                ),
              ),
              kheight14,
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Translate to $toText"),
              ),
              kheight14,
              Center(child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return const ToTextFieldWidget();
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
