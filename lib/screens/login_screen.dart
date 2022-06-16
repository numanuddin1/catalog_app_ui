// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_practice4/main.dart';
import 'package:flutter_practice4/utils/routes.dart';

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
       Color appColor = Color(0xFF67C995);
       return Scaffold(
         body: SingleChildScrollView(
           child: Form(
             key: _formKey,
             child: Column(
               children: [
                 SizedBox(
                   height: 40,
                 ),
                 Center(
                     child: Image.asset(
                       'assets/images/login_image.png',
                       fit: BoxFit.cover,
                       height: 250,
                     )),
                 SizedBox(
                   height: 20,
                 ),
                 Text(
                   "Welcome $name",
                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                 ),
                 SizedBox(
                   height: 42,
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 40.0),
                   child: Column(
                     children: [
                       SizedBox(
                         height: 58,
                         child: TextFormField(
                           keyboardType: TextInputType.emailAddress,
                           decoration: InputDecoration(
                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                             hintText: 'Enter Username',
                             label: Text(
                               "Username",
                               style: TextStyle(fontSize: 18),
                             ),
                             prefixIcon: Icon(Icons.email_outlined),
                           ),
                           validator: (value) {
                             if (value!.isEmpty) {
                               return 'Can\'t be empty';
                             }
                             return null;
                           },
                           onChanged: (value) {
                             name = value;
                             setState(() {});
                           },
                         ),
                       ),
                       SizedBox(height: 18,),
                       SizedBox(
                         height: 58,
                         child: TextFormField(
                           keyboardType: TextInputType.visiblePassword,
                           obscureText: true,
                           decoration: InputDecoration(
                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),),
                             hintText: 'Enter password',
                             label: Text(
                               "Password",
                               style: TextStyle(fontSize: 18),
                             ),
                             prefixIcon: Icon(Icons.password),
                           ),
                           validator: (value) {
                             if (value!.isEmpty) {
                               return 'Can\'t be empty';
                             }
                             return null;
                           },
                         ),
                       ),
                       SizedBox(
                         height: 30,
                       ),
                       InkWell(
                         onTap: () => moveToHome(context),
                         child: AnimatedContainer(
                           width: changeButton ? 40 : 150,
                           height: 40,
                           alignment: Alignment.center,

                           child: changeButton ? Icon(
                             Icons.done, color: Colors.white,) : Text(
                             'Login',
                             style:
                             TextStyle(fontSize: 16,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white),
                           ),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(
                                 changeButton ? 53 : 7),
                             color: appColor,
                           ),
                           duration: Duration(milliseconds: 600),
                         ),
                       ),
                       SizedBox(
                         height: 50,
                       ),
                     ],
                   ),
                 ),
               ],
             ),
           ),
         ),
       );
     }
   }

