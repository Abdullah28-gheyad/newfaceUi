import 'package:flutter/material.dart';
import 'package:newfacebook/models/post_model.dart';

class TextPostWidget extends StatelessWidget {
  TextPostWidget({Key? key, this.postModel}) : super(key: key) ;
  PostModel? postModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, left: 10),
      child: Text(postModel!.text!),
    );
  }
}
