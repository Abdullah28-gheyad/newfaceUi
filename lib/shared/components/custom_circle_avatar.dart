import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  CustomCircleAvatar({Key? key, this.image,this.radius}) : super(key: key) ;
  String? image ;
  double? radius=25 ;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(image!),
      radius: radius,
    );
  }
}
