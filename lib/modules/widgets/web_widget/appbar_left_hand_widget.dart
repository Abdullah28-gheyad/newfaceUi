import 'package:flutter/material.dart';
import 'package:newfacebook/shared/components/custom_web_icon.dart';

class AppBarLeftHandWidget extends StatelessWidget {
  const AppBarLeftHandWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: CustomWebIcon(function: (){},iconData: Icons.arrow_drop_down,backGroundColor: Colors.grey[300]!,color: Colors.black,),
          ),
          Expanded(
            child: CustomWebIcon(function: (){},iconData: Icons.notifications,backGroundColor: Colors.grey[300]!,color: Colors.black,),
          ),
          Expanded(
            child: CustomWebIcon(function: (){},iconData: Icons.messenger_outline,backGroundColor: Colors.grey[300]!,color: Colors.black,),
          ),
          Expanded(
            child: CustomWebIcon(function: (){},iconData: Icons.apps_sharp,backGroundColor: Colors.grey[300]!,color: Colors.black,),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: const [
                Expanded(
                    child: Text(
                      'Abdullah',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )),
                Expanded(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://static.remove.bg/remove-bg-web/97e23b9bea3ef10227bf2e0bed160d3a30f93253/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
