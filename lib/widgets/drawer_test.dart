import 'package:flutter/material.dart';
import 'package:flutter_practice4/utils/themes.dart';

class DrawerTest extends StatelessWidget {
  const DrawerTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/photos/pakistan-monument-islamabad-picture-id535695503?k=20&m=535695503&s=612x612&w=0&h=S16wHXc-b3AkL7YMrcFkR2pDGFJA1bRsPmAfQlfrwkc='),
                ),
                accountName: Text('Account Name'),
                accountEmail: Text('Account Email')),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About'),
          )
        ],
      ),
    );
  }
}
