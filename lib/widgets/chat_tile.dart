import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  ChatTile({
    @required this.name,
    @required this.imageUrl,
    @required this.message,
    @required this.time,
    @required this.onTap
  });

  final String name;
  final String imageUrl;
  final String message;
  final String time;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: 50.0,
            height: 50.0,
          )
      ),
      title: Row(
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.w500
            ),
          ),
          Text(
            time,
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.grey
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      subtitle: Text(
        message,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      onTap: onTap,
    );
  }
}