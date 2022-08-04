import 'package:flutter/material.dart';

var myDefaultBackgroundColor = Colors.grey[300];

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: const [
      DrawerHeader(child: Icon(Icons.menu_book)),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("DASHBOARD"),
      ),
      ListTile(
        leading: Icon(Icons.chat),
        title: Text("CHAT"),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("SETTINGS"),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text("LOGOUT"),
      ),
    ],
  ),
);

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);
