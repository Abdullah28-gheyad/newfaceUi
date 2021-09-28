import 'package:flutter/material.dart';
import 'package:newfacebook/modules/widgets/shared_widget/all_room_widget.dart';
import 'package:newfacebook/modules/widgets/mobile_widget/audio_rooms_widget.dart';
import 'package:newfacebook/modules/widgets/mobile_widget/appbar_widget.dart';
import 'package:newfacebook/modules/widgets/shared_widget/posts_widget.dart';
import 'package:newfacebook/shared/components/custom_circle_avatar.dart';
import 'package:newfacebook/shared/components/custom_sizedbox.dart';
import 'package:newfacebook/shared/components/custom_line.dart';
import 'package:newfacebook/modules/widgets/shared_widget/features_widget.dart';
import 'package:newfacebook/modules/widgets/mobile_widget/search_widget.dart';
import 'package:newfacebook/modules/widgets/shared_widget/stories_widget.dart';

class HomePhoneScreen extends StatelessWidget {
  const HomePhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: const AppBarWidget(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 10, top: 10),
                child: Row(
                  children: [
                    CustomCircleAvatar(
                      image:
                          'https://static.remove.bg/remove-bg-web/97e23b9bea3ef10227bf2e0bed160d3a30f93253/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg',
                      radius: 20,
                    ),
                    CustomSizedBox(
                      width: 5,
                      space: 0,
                    ),
                    const SearchWidget()
                  ],
                ),
              ),
              CustomLine(
                  color: Colors.grey[200]!, width: double.infinity, height: 1),
              const FeaturesWidget(),
              CustomSizedBox(
                width: 10,
              ),
              CustomLine(
                  color: Colors.grey[300]!, width: double.infinity, height: 5),
              const AudioRoomWidget(),
              CustomSizedBox(
                space: 10,
              ),
              const AllRoomWidget(),
              CustomLine(
                  color: Colors.grey[300]!, width: double.infinity, height: 5),
              CustomSizedBox(
                space: 15,
              ),
              const StoriesWidget(),
              CustomSizedBox(
                space: 10,
              ),
              CustomLine(
                height: 10,
                width: double.infinity,
                color: Colors.grey[300],
              ),
              const SizedBox(
                height: 10,
              ),
              const PostsWidget()
            ],
          ),
        ),
      ),
    );
  }
}
