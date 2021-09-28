import 'package:flutter/material.dart';
import 'package:newfacebook/cubit/cubit.dart';
import 'package:newfacebook/modules/widgets/web_widget/center_widget.dart';
import 'package:newfacebook/modules/widgets/web_widget/left_hand_widget.dart';
import 'package:newfacebook/modules/widgets/web_widget/right_hand_side_widget.dart';
import 'package:newfacebook/modules/widgets/web_widget/web_appbar_widget.dart';
import 'package:newfacebook/shared/components/custom_right_side.dart';


class HomeWebScreen extends StatelessWidget {
  HomeWebScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const WebAppBarWidget(),
          const SizedBox(height: 20,) ,
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                LeftHandSideWidget() ,
                CenterWidget() ,
                RightHandSide()
              ],
            ),
          )
        ],
      ),
    );
  }
}
