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
          title: Text(widget.name),
        ),
      ),
    );
  }
}