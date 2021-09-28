import 'package:flutter/material.dart';

class CustomLine extends StatelessWidget {
  CustomLine({Key? key, required this.color,required this.width,required this.height}) : super(key: key) ;
     double? height ;
     double? width ;
     Color? color ;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height!,
      width: width!,
      color: color!,
    );
  }
}
