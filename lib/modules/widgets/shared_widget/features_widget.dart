import 'package:flutter/material.dart';
import 'package:newfacebook/shared/components/custom_iconbutton.dart';
import 'package:newfacebook/shared/components/custom_sizedbox.dart';
import 'package:newfacebook/shared/components/custom_line.dart';

class FeaturesWidget extends StatelessWidget {
  const FeaturesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: CustomIcon(
                    iconData: Icons.live_tv_sharp,
                    function: () {},
                    size: 20,
                    color: Colors.red,
                  )),
                  Expanded(
                      child: CustomSizedBox(
                    width: 5,
                    space: 0,
                  )),
                  const Expanded(
                      child: Text(
                    'Live',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ))
                ],
              ),
            ),
          ),
          Container(
            height: 15,
            width: 1,
            color: Colors.grey[300],
          ),
          Expanded(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: CustomIcon(
                    iconData: Icons.photo,
                    function: () {},
                    color: Colors.green,
                    size: 20,
                  )),
                  Expanded(
                      child: CustomSizedBox(
                    width: 5,
                    space: 0,
                  )),
                  const Expanded(
                      child: Text(
                    'Photo',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ))
                ],
              ),
            ),
          ),
          CustomLine(color: Colors.grey[300]!, width: 1, height: 15),
          Expanded(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIcon(
                    iconData: Icons.video_call,
                    function: () {},
                    color: Colors.purple,
                    size: 20,
                  ),
                  CustomSizedBox(
                    width: 5,
                    space: 0,
                  ),
                  const Text(
                    'Live',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
