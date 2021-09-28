import 'package:flutter/material.dart';

class AudioRoomWidget extends StatelessWidget {
  const AudioRoomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 20.0,
        top: 20,
      ),
      child: Text(
        'Audio and Video Rooms',
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.bold),
      ),
    );
  }
}
