import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget {
  final String heroID;
  final String photo;
  final Function onTap;
  final double width;

  PhotoHero({
    @required this.heroID,
    @required this.photo,
    @required this.width,
    @required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: width,
        child: Hero(
          tag: heroID,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              child: Image.network(
                photo,
                fit: BoxFit.contain
              ),
            ),
          ),
        ),
      ),
    );
  }
}