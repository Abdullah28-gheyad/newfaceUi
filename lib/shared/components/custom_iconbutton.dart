import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({Key? key, this.iconData,this.size,this.function, this.color}) : super(key: key) ;
  Function? function ;
  IconData? iconData ;
  double? size  = 20;
  Color? color = Colors.blue ;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){function!;}, icon: Icon(iconData! , size: size,color:color ,));
  }
}
