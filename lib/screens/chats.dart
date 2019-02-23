import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';
class ChatsScreen extends StatefulWidget {
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messagesData.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(messagesData[i].imageUrl),
            ),
            title: Row(
              children: <Widget>[
                Text(
                  messagesData[i].name,
                  style: TextStyle(
                    fontWeight: FontWeight.w500
                  ),
                ),
                Text(
                  messagesData[i].time,
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.grey
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            subtitle: Text(
                  messagesData[i].message,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                )
            )
        ],
      ),
    );
  }
}