import 'package:flutter/material.dart';

class InfoBar extends StatelessWidget {
  final String content;
  final Color textColor;
  final Color backgroundColor;

  InfoBar({
    @required this.content,
    this.textColor = Colors.white,
    this.backgroundColor = const Color(0xFF666666),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Text(
        content,
        style: TextStyle(color: textColor),
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Color(0x33000000),
            offset: Offset(2, 4),
          )
        ],
      ),
    );
  }
}
