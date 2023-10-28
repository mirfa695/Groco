import 'package:flutter/material.dart';

class CustomHeading extends StatelessWidget {
   CustomHeading({this.text1,this.text2,this.size,
    Key? key}) : super(key: key);
  String? text1;
  String? text2;
  double? size;
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
          TextSpan(
              text: text1??'',
              style:  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size??30,
                  fontFamily: 'AlfaSlab',
                  letterSpacing: 1.5,
                  color: Colors.black)),
          TextSpan(
              text: text2??'',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size??30,
                  fontFamily: 'AlfaSlab',
                  letterSpacing: 1.5,
                  color: Colors.orange))
        ]));
  }
}
