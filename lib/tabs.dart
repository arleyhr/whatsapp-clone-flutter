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
  var currentFabIndex;

  final List fabs = [
    FloatingActionButton(
      child: Icon(
        Icons.camera_alt,
        color: Colors.white,
      ),
      onPressed: (){},
    ),
    FloatingActionButton(
      child: Icon(
        Icons.message,
        color: Colors.white,
      ),
      onPressed: (){},
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 5.0, right: 5.0),
          child: FloatingActionButton(
            backgroundColor: Color(0xFFECEFF1),
            mini: true,
            child: Icon(
              Icons.edit,
              color: Colors.grey,
            ),
            onPressed: (){},
          )
        ),
        FloatingActionButton(
          child: Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: (){},
        ),
      ],
    ),
    FloatingActionButton(
      child: Icon(
        Icons.call,
        color: Colors.white,
      ),
      onPressed: (){},
    ),
  ];

  void _getFab () {
    setState(() {
      currentFabIndex = _tabController.index;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(_getFab);
    currentFabIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: fabs[currentFabIndex],
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
          IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          PopupMenuButton(
            child: Icon(Icons.more_vert, color: Colors.white),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: "1",
                child: Text('New group'),
              ),
              PopupMenuItem(
                value: "2",
                child: Text('Whatsapp Web'),
              ),
              PopupMenuItem(
                value: "3",
                child: Text('Settings'),
              )
            ],
          ),
          // IconButton(icon: Icon(Icons.more_vert, color: Colors.white), onPressed: () {})
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