import 'package:flutter/material.dart';

class UpChatWidget extends StatelessWidget {
  const UpChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Expanded(
            child: Text(
              'Contacts',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )),
        Expanded(
          flex: 2,
          child: Row(
            children: const [
              Expanded(child: Icon(Icons.more)),
              Expanded(child: Icon(Icons.search)),
              Expanded(
                  child: Icon(Icons.video_settings_rounded))
            ],
          ),
        )
      ],
    );
  }
}
