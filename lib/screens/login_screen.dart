// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_practice4/main.dart';
import 'package:flutter_practice4/utils/routes.dart';
import 'package:flutter_practice4/utils/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = '';
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();


   moveToHome(BuildContext context) async {
     if (_formKey.currentState!.validate()) {
       setState(() {
         changeButton = true;
       });
       await Future.delayed(Duration(seconds: 1));
       await Navigator.pushNamed(context, MyRoutes.homeRoute);
       setState(() {
         changeButton = false;
       });
     }
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Center(
                  child: Image.network(
                    'https://gawvs.in//assets/img/login.png',
                    height: 200,
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 45.0, vertical: 20),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                        hintText: 'Enter Username',
                        label: Text(
                          'Username',
                        ),
                        prefixIcon: Icon(Icons.account_circle),

                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Username Can\'t be empty';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 18,),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                        hintText: 'Enter Password',
                        label: Text(
                          'Password',
                        ),
                        prefixIcon: Icon(Icons.password),

                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password Can\'t be empty';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        alignment: Alignment.center,
                        height: 35,
                        width: changeButton? 40 : 130,
                        decoration: BoxDecoration(
                          color: MyTheme().appColor,
                          borderRadius: BorderRadius.circular(changeButton? 53 : 14),
                        ),
                        duration: Duration(milliseconds: 600),
                        child: changeButton ? Icon(
                          Icons.done, color: Colors.white,) : Text(
                          'Login',
                          style:
                          TextStyle(fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
   }

