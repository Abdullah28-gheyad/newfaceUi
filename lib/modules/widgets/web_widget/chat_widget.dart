import 'package:flutter/material.dart';
import 'package:newfacebook/models/chat_model.dart';

class ChatWidget extends StatelessWidget {
  ChatWidget({Key? key, this.chatModel}) : super(key: key) ;
  ChatModel? chatModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: CircleAvatar(
            backgroundImage: NetworkImage(chatModel!.image!),
          ),
        ),
        Expanded(
            flex: 2,
            child: Text(
              chatModel!.name!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ))
      ],
    );
  }
}

