import 'package:flutter/material.dart';
import 'package:whatsapp_clone/tabs.dart';

void main() => runApp(WhatsApp());


class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp Clone",
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      home: new WhatAppTabs()
    );
  }
}