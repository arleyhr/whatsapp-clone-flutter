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
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(
          Icons.message,
          color: Colors.white,
        )
      ),
      appBar: AppBar(
        title: Text("WhatsApp"),
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "ESTADOS"),
            Tab(text: "LLAMADAS"),
          ],
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white)),
          IconButton(icon: Icon(Icons.more_vert, color: Colors.white))
        ],
      ),
      body: Center(
        child: Center(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              new CameraScreen(),
              new ChatsScreen(),
              new StatusScreen(),
              new CallScreen()
            ],
          ),
        ),
      ),
    );
  }
}