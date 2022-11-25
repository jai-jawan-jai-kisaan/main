import 'package:flutter/material.dart';
import 'package:ims_project/view/screens/home_screen.dart';
import 'package:ims_project/view/screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.white,
          secondary: const Color(0xFFABE098),
        ),
        textTheme:
            GoogleFonts.sourceSansProTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id : (context) => LoginScreen(),
        HomeScreen.id : (context) => HomeScreen(),
      },
      home: const LoginScreen(),
    );
  }
}
