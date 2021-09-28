import 'package:flutter/material.dart';
import 'package:newfacebook/shared/components/custom_iconbutton.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'FaceBook',
        style: TextStyle(
            color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      actions: [
        CustomIcon(size: 25,function: (){},iconData: Icons.search,),
        CustomIcon(size: 25,function: (){},iconData: Icons.chat,),
      ],
      bottom: const TabBar(
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.blue,
        tabs: [
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.live_tv_rounded)),
          Tab(icon: Icon(Icons.supervised_user_circle_outlined)),
          Tab(icon: Icon(Icons.notifications_none)),
          Tab(icon: Icon(Icons.view_headline)),
        ],
      ),
    ) ;  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(80) ;
}
