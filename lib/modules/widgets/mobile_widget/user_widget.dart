import 'package:flutter/material.dart';
import 'package:newfacebook/models/post_model.dart';
import 'package:newfacebook/shared/components/custom_circle_avatar.dart';
import 'package:newfacebook/shared/components/custom_iconbutton.dart';
import 'package:newfacebook/shared/components/custom_sizedbox.dart';

class UserWidget extends StatelessWidget {
  UserWidget({Key? key, this.postModel}) : super(key: key) ;
  PostModel? postModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          CustomCircleAvatar(
            image: postModel!.profileImage!,
          ) ,
          CustomSizedBox(width: 10,) ,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                postModel!.name!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Text(
                    '${postModel!.time!.toString()}h',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CustomIcon(iconData: Icons.public,size: 14,color: Colors.grey,)
                ],
              )
            ],
          ),
          const Spacer(),
          CustomIcon(iconData: Icons.more_horiz_outlined,size: 20,color: Colors.blueGrey,)
        ],
      ),
    );
  }
}
