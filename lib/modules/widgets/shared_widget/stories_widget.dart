import 'package:flutter/material.dart';
import 'package:newfacebook/cubit/cubit.dart';
import 'package:newfacebook/shared/components/custom_sizedbox.dart';
import 'package:newfacebook/shared/components/custom_story.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>
              CustomStory(storyModel: AppCubit.get(context).stories[index],),
          separatorBuilder: (context, index) => CustomSizedBox(),
          itemCount: AppCubit.get(context).stories.length),
    );
  }
}
