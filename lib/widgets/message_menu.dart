import 'package:flutter/material.dart';
import 'package:fluttergram/ui_shared/constants.dart';

class MessageMenu extends StatelessWidget {
  const MessageMenu({
    Key key,
    @required this.text,
    @required this.message,
    @required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon, message;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          backgroundColor: Color(0xFFF5F6F9),
          primary: primaryColor,
        ),
        onPressed: press,
        child: Row(
          children: [
            SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.photo_rounded,
                  color: textColor,
                  size: 35,
                ),
              ),
            ),
            SizedBox(width: 25),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  child: Text(
                    text,
                    style: TextStyle(color: textColor, fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(width: 25),
                SizedBox(
                  child: Text(
                    message,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
