import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_practice4/screens/cart_screen.dart';
import 'package:flutter_practice4/utils/routes.dart';
import 'package:flutter_practice4/screens/home_screen.dart';
import 'package:flutter_practice4/screens/login_screen.dart';
import 'package:flutter_practice4/utils/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }
  Color appColor = Color(0xFF67C995);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice 4',
      themeMode: ThemeMode.system,
      theme: MyTheme().lightTheme(context),
      darkTheme: MyTheme().darkTheme(context),
      initialRoute: MyRoutes.loginRoute,
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.loginRoute: (context) => LoginScreen(),
        MyRoutes.homeRoute: (context) => Home(),
     //   MyRoutes.cartRoute: (context) => CartSreen(),
      },
    );
  }
}
