import 'package:flutter/material.dart';

class ChatDetail extends StatefulWidget {
  final String name;
  final String photo;

  ChatDetail({ @required this.name, @required this.photo });

  _ChatDetailState createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              ClipOval(
                child: Image.network(
                  widget.photo,
                  fit: BoxFit.cover,
                  width: 40.0,
                  height: 40.0,
                )
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Text(widget.name),
              )
            ],
          ),
          actions: <Widget>[
            // IconButton(icon: Icon(Icons.videocam, color: Colors.white)),
            IconButton(icon: Icon(Icons.call, color: Colors.white)),
            IconButton(icon: Icon(Icons.more_vert, color: Colors.white))
          ],
        ),
      ),
    );
  }
}