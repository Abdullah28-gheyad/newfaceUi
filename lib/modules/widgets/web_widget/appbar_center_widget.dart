import 'package:flutter/material.dart';
import 'package:newfacebook/shared/components/custom_web_icon.dart';

class AppBarCenterWidget extends StatelessWidget {
  const AppBarCenterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        children: [
          Expanded(child: CustomWebIcon(color: Colors.grey,backGroundColor: Colors.white,function: (){},iconData: Icons.shopping_bag_outlined,)),
          Expanded(child: CustomWebIcon(color: Colors.grey,backGroundColor: Colors.white,function: (){},iconData: Icons.dashboard,)),
          Expanded(child: CustomWebIcon(color: Colors.grey,backGroundColor: Colors.white,function: (){},iconData: Icons.supervised_user_circle,)),
          Expanded(child: CustomWebIcon(color: Colors.grey,backGroundColor: Colors.white,function: (){},iconData: Icons.video_settings_rounded,)),
          Expanded(child: CustomWebIcon(color: Colors.grey,backGroundColor: Colors.white,function: (){},iconData: Icons.home,)),
        ],
      ),
    );
  }
}
