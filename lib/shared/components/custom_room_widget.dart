import 'package:flutter/material.dart';
import 'package:newfacebook/models/room_model.dart';
import 'package:newfacebook/shared/components/custom_circle_avatar.dart';

class CustomRoomWidget extends StatelessWidget {
  CustomRoomWidget({Key? key, this.model,this.radius}) : super(key: key) ;
  RoomModel? model;
  double? radius ;
  @override
  Widget build(BuildContext context) {
    return CustomCircleAvatar(image:model!.image!, radius: radius,);
  }
}

