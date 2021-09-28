import 'package:flutter/material.dart';

class CustomWebIcon extends StatelessWidget {
  CustomWebIcon({Key? key, this.iconData,this.size,this.function, this.color,this.backGroundColor}) : super(key: key) ;
  Function? function ;
  IconData? iconData ;
  double? size  = 20;
  Color? color = Colors.blue ;
  Color? backGroundColor = Colors.grey[300] ;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: backGroundColor,
        child: IconButton(onPressed: (){function!;}, icon: Icon(iconData! , size: size,color:color ,)));
  }
}
