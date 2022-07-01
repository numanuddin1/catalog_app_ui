// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).canvasColor,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              currentAccountPicture: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/login_image.png'),
                ),
              ),
              accountName: Text(
                'Numan Uddin',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              accountEmail: Text(
                'nomanuddin2012@gmail.com',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined, color: Colors.white,),
            title: Text('Home', textScaleFactor: 1.2, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold  ),),
          ), ListTile(
            leading: Icon(Icons.person_outline, color: Colors.white,),
            title: Text('Profile', textScaleFactor: 1.2, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ),),
          ), ListTile(
            leading: Icon(Icons.info_outline, color: Colors.white,),
            title: Text('About', textScaleFactor: 1.2, style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold ),),
          )

        ],
      ),
    );
  }
}
