import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls.dart';
import 'package:whatsapp_clone/screens/camera.dart';
import 'package:whatsapp_clone/screens/chats.dart';
import 'package:whatsapp_clone/screens/status.dart';

class WhatAppTabs extends StatefulWidget {
  var cameras;
  WhatAppTabs({ this.cameras });
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
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white)),
          IconButton(icon: Icon(Icons.more_vert, color: Colors.white))
        ],
      ),
      body: TabBarView(
              controller: _tabController,
              children: <Widget>[
                new CameraScreen(cameras: widget.cameras),
                new ChatsScreen(),
                new StatusScreen(),
                new CallScreen()
              ],
            )
          );
  }
}