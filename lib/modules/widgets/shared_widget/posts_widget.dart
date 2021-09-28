import 'package:flutter/material.dart';
import 'package:newfacebook/cubit/cubit.dart';
import 'package:newfacebook/shared/components/custom_post.dart';

class PostsWidget extends StatelessWidget {
  const PostsWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) =>
            CustomPost(postModel: AppCubit.get(context).posts[index]),
        separatorBuilder: (context, index) => Container(
          height: 10,
          width: double.infinity,
          color: Colors.grey[300],
        ),
        itemCount: AppCubit.get(context).posts.length) ;
  }
}
