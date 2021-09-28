import 'package:flutter/material.dart';
import 'package:newfacebook/models/post_model.dart';
import 'package:newfacebook/modules/widgets/shared_widget/post_reactions_widget.dart';
import 'package:newfacebook/modules/widgets/shared_widget/add_reaction_widget.dart';
import 'package:newfacebook/shared/components/custom_line.dart';
import 'package:newfacebook/modules/widgets/shared_widget/post_image_widget.dart';
import 'package:newfacebook/modules/widgets/shared_widget/post_text_widget.dart';
import 'package:newfacebook/modules/widgets/mobile_widget/user_widget.dart';

class CustomPost extends StatelessWidget {
  CustomPost({Key? key, this.postModel}) : super(key: key) ;
  PostModel? postModel ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserWidget(postModel: postModel,)  ,
        TextPostWidget(postModel: postModel,),
        const SizedBox(
          height: 10,
        ),
        if (postModel!.images != null)
          PostImageWidget(postModel),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: PostReactionsWidget(postModel),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child:CustomLine(color: Colors.grey[300]!, width: double.infinity, height: 1)
          ,
        ),
       const ReactionWidget() ,
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}


