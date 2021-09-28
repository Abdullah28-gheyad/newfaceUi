import 'package:flutter/material.dart';
import 'package:newfacebook/models/story_model.dart';

class CustomStory extends StatelessWidget {
  CustomStory({Key? key, this.storyModel}) : super(key: key);
  StoryModel? storyModel ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: SizedBox(
        width: 100,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              height: 200,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(storyModel!.image!),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                storyModel!.text!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
                textAlign: TextAlign.start,
              ),
            )
          ],
        ),
      ),
    );
  }
}

