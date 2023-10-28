
import 'package:flutter/material.dart';

class CustomTextFiels extends StatelessWidget {
   CustomTextFiels({
    this.text,this.type,this.val,this.controller,
    Key? key}) : super(key: key);
  String? text;
  TextInputType? type;
  TextEditingController? controller;
   String? Function(String?)? val;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller ,
      validator: val,
   keyboardType: type,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: text,
        filled: true,
        fillColor: Colors.black.withOpacity(.3),
        enabledBorder:const OutlineInputBorder(borderSide:BorderSide(color: Colors.white)),
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.orange)),
      ),
    );
  }
}
