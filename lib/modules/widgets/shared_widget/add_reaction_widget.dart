import 'package:flutter/material.dart';

class ReactionWidget extends StatelessWidget {
  const ReactionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 20,
                    )),
                const Expanded(
                    child: Text(
                      'Like',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ))
              ],
            )),
        Expanded(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mode_comment_outlined,
                      color: Colors.black,
                      size: 20,
                    )),
                const Expanded(
                    child: Text('Comment',
                        overflow: TextOverflow.ellipsis, maxLines: 1))
              ],
            )),
        Expanded(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share_outlined,
                      color: Colors.black,
                      size: 20,
                    )),
                const Expanded(
                    child: Text('Share',
                        overflow: TextOverflow.ellipsis, maxLines: 1))
              ],
            )),
      ],
    );
  }
}
