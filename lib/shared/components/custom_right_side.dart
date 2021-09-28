import 'package:flutter/material.dart';
import 'package:newfacebook/models/right_side_model.dart';

class CustomRightSide extends StatelessWidget {
  CustomRightSide({Key? key, this.rightSideModel,}) : super(key: key) ;
  RightSideModel? rightSideModel ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage(rightSideModel!.image!,),
          ),
        ),
        Expanded(
            flex: 2,
            child: Text(
              rightSideModel!.text!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ))
      ],
    );
  }
}

