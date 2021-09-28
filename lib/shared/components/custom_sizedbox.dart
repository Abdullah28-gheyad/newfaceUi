import 'package:flutter/material.dart';

class CustomSizedBox extends StatelessWidget {
  CustomSizedBox({Key? key, this.space,this.width}) : super(key: key);
   double? space=0 ;
   double? width =0;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: space,
      width: width,
    );
  }
}
