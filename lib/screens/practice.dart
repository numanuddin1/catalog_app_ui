// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice4/utils/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  Color blueColor = Color(0xFF5068F2);
  Color greyColor = Color(0xFFCBCBCB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          alignment: Alignment.center,
          height: 216,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.black38,
            ),
            child: ContentWidget(blueColor: blueColor, greyColor: greyColor)),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key? key,
    required this.blueColor, required this.greyColor,
  }) : super(key: key);

  final Color blueColor;
  final Color greyColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: CircleAvatar(
                  radius: 32,
                  backgroundImage: NetworkImage(
                      'https://lumiere-a.akamaihd.net/v1/images/ct_frozen_elsa_18466_22a50822.jpeg?region=0,0,600,600'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Elsa",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: GoogleFonts.lato().fontFamily),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 80.0),
                          child: Image.asset(
                            'assets/images/medal.png',
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Level 4 Ace Member",
                      style: TextStyle(
                          fontSize: 12,
                          color: greyColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.lato().fontFamily),
                    ),
                  ),
                  SizedBox(
                    width: 180,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: LinearProgressIndicator(
                          value: .567,
                          valueColor: AlwaysStoppedAnimation<Color>(blueColor),
                          backgroundColor: Color(0xFFF5F1FF),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Icon(
                CupertinoIcons.add_circled,
                size: 32,
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "1,208",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.lato().fontFamily,
                          color: blueColor),
                    ),
                    Text(
                      "Transactions",
                      style: TextStyle(
                          fontSize: 12,
                          color: greyColor,
                          fontWeight: FontWeight.normal,
                          fontFamily: GoogleFonts.lato().fontFamily),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "726",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.lato().fontFamily,
                          color: blueColor),
                    ),
                    Text(
                      "Points",
                      style: TextStyle(
                          fontSize: 12,
                          color: greyColor,
                          fontWeight: FontWeight.normal,
                          fontFamily: GoogleFonts.lato().fontFamily),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "8",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.lato().fontFamily,
                          color: blueColor),
                    ),
                    Text(
                      "Ranks",
                      style: TextStyle(
                          fontSize: 12,
                          color: greyColor,
                          fontWeight: FontWeight.normal,
                          fontFamily: GoogleFonts.lato().fontFamily),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyTheme().lightCanvasColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 3.0, horizontal: 8),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 9)),
                        Text('Explore',  style: TextStyle(fontSize: 12),),
                        Icon(Icons.arrow_circle_right_outlined)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.0, right: 6 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyTheme().lightCanvasColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 7),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 9)),
                        Text('Edit Profile', style: TextStyle(fontSize: 12),),
                        Icon(CupertinoIcons.person)
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyTheme().lightCanvasColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 7),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 9)),
                        Text('Settings', style: TextStyle(fontSize: 12),),
                        Icon(CupertinoIcons.settings)
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyTheme().lightCanvasColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 7),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 9)),
                        Text('Share',  style: TextStyle(fontSize: 12),),
                        Icon(Icons.share)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
