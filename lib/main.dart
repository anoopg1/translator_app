import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:language_translator/bloc/home/home_bloc.dart';
import 'package:language_translator/core/dependency_injection/injectable.dart';
import 'package:language_translator/presentation/home/screen_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<HomeBloc>(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ScreenHome(),
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.grey.shade900,
            fontFamily: GoogleFonts.montserrat().fontFamily,
            textTheme: Typography.whiteCupertino,
          )),
    );
  }
}
