import 'package:flutter/material.dart';
import 'package:newfacebook/models/post_model.dart';

class PostReactionsWidget extends StatelessWidget {
  PostReactionsWidget(this.postModel, {Key? key}) : super(key: key) ;
  PostModel? postModel ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
            backgroundColor: Colors.red,
            radius: 9,
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 12,
            )),
        const SizedBox(
          width: 5,
        ),
        Text(
          postModel!.like!.toString(),
          style: Theme.of(context).textTheme.caption,
        ),
        const Spacer(),
        Text(
          '${postModel!.comments!.toString()} Comments',
          style: Theme.of(context).textTheme.caption,
        )
      ],
    );
  }
}
