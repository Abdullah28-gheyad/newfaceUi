import 'package:flutter/material.dart';
import 'package:newfacebook/cubit/cubit.dart';
import 'package:newfacebook/modules/widgets/web_widget/chat_widget.dart';
import 'package:newfacebook/modules/widgets/web_widget/up_chat_widget.dart';

class LeftHandSideWidget extends StatelessWidget {
  const LeftHandSideWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const UpChatWidget(),
              const SizedBox(height: 20,) ,
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      ChatWidget(chatModel: AppCubit.get(context).chats[index],),
                  separatorBuilder: (context, index) =>
                  const SizedBox(
                    height: 5,
                  ),
                  itemCount: AppCubit.get(context).chats.length)
            ],
          ),
        ));
  }
}
