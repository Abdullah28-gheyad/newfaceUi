import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:newfacebook/models/post_model.dart';

class PostImageWidget extends StatelessWidget {
  PostImageWidget(this.postModel, {Key? key}) : super(key: key);
  PostModel? postModel;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 200,
          initialPage: 0,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          reverse: false,
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal),
      items: postModel!.images!.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Image(
              image: NetworkImage(i),
              fit: BoxFit.fill,
              width: double.infinity,
              height: 200,
            );
          },
        );
      }).toList(),
    );
  }
}
