import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls.dart';
import 'package:whatsapp_clone/screens/camera.dart';
import 'package:whatsapp_clone/screens/chats.dart';
import 'package:whatsapp_clone/screens/status.dart';

class WhatAppTabs extends StatefulWidget {
  _WhatAppTabsState createState() => _WhatAppTabsState();
}

class _WhatAppTabsState extends State<WhatAppTabs> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("WhatsApp")
        ),
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "ESTADOS"),
            Tab(text: "LLAMADAS"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatsScreen(),
          new StatusScreen(),
          new CallScreen()
        ],
      ),
    );
  }
}