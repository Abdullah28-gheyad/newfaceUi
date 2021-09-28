import 'package:flutter/material.dart';
import 'package:newfacebook/modules/widgets/shared_widget/all_room_widget.dart';
import 'package:newfacebook/modules/widgets/shared_widget/features_widget.dart';
import 'package:newfacebook/modules/widgets/shared_widget/posts_widget.dart';
import 'package:newfacebook/modules/widgets/shared_widget/stories_widget.dart';
import 'package:newfacebook/modules/widgets/web_widget/what_inur_mind_widget.dart';
import 'package:newfacebook/shared/components/custom_line.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            const SizedBox(
              height: 200,
              child: StoriesWidget(),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQg45jUi84SYeCf4uNAaprS7aoKzS8AohaLwQ&usqp=CAU'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        YourMindWidget() ,
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomLine(
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey[200],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const FeaturesWidget(),
                  const SizedBox(height: 20,)
                ],
              ),
            ),
            const SizedBox(height: 5,) ,

            const Card(
              child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: AllRoomWidget()
              ),
            ),
            const SizedBox(height: 5,) ,
           const PostsWidget()
          ],
        ),
      ),
    );
  }
}
