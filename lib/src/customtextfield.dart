import 'package:flutter/material.dart';

class Customtextfield extends StatefulWidget {
  Customtextfield(
      {Key? key,
      required this.height,
      required this.width,
      required this.color,
      required this.text,
      this.radius,
      this.controller,
      this.fontColor,
      this.fontWeight,
      this.fontSize})
      : super(key: key);

  double? height;
  double? width;
  Color? color;
  String? text;
  double? radius;
  TextEditingController? controller;
  Color? fontColor;
  FontWeight? fontWeight;
  double? fontSize;

  @override
  _CustomtextfieldState createState() => _CustomtextfieldState();
}

class _CustomtextfieldState extends State<Customtextfield> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(widget.radius ?? 20.0)),
        child: TextField(
          controller: widget.controller ?? email,
          decoration: InputDecoration(
              hintText: widget.text,
              hintStyle: TextStyle(
                  color: widget.fontColor ?? Colors.black,
                  fontSize: widget.fontSize ?? 18,
                  fontWeight: widget.fontWeight ?? FontWeight.bold),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent))),
        ),
      ),
    );
  }
}
