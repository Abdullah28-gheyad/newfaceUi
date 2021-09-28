import 'package:flutter/material.dart';
import 'package:newfacebook/cubit/cubit.dart';
import 'package:newfacebook/shared/components/custom_sizedbox.dart';
import 'package:newfacebook/shared/components/custom_text_button.dart';
import 'package:newfacebook/shared/components/custom_room_widget.dart';

class AllRoomWidget extends StatelessWidget {
  const AllRoomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: SizedBox(
        height: 60,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              CustomTextButton(text: 'Create Room' , function: (){},),
              CustomSizedBox(width: 10,),
              SizedBox(
                height: 60,
                child: ListView.separated(
                  itemBuilder: (context, index) =>
                      CustomRoomWidget(model: AppCubit.get(context).rooms[index],),
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: AppCubit.get(context).rooms.length, separatorBuilder: (
                    BuildContext context, int index)=>CustomSizedBox(width: 10,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
