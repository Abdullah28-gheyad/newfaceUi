import 'package:flutter/material.dart';
import 'package:newfacebook/modules/widgets/web_widget/appbar_center_widget.dart';
import 'package:newfacebook/modules/widgets/web_widget/appbar_left_hand_widget.dart';
import 'package:newfacebook/modules/widgets/web_widget/appbar_right_hand_widget.dart';

class WebAppBarWidget extends StatelessWidget {
  const WebAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            children: [
              Row(
                children:   const [
                  AppBarLeftHandWidget()  ,
                  AppBarCenterWidget(),
                  AppBarRightHandWidget() ,
                ],
              ),
              const SizedBox(height: 10,) ,
            ],
          ),

        ),

      ],
    );
  }
}
