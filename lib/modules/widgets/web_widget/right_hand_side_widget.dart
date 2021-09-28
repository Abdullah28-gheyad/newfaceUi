import 'package:flutter/material.dart';
import 'package:newfacebook/cubit/cubit.dart';
import 'package:newfacebook/shared/components/custom_right_side.dart';

class RightHandSide extends StatelessWidget {
  const RightHandSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context,index)=>CustomRightSide(rightSideModel:AppCubit.get(context).rights[index]),
                separatorBuilder: (context,index)=>const SizedBox(height: 20,),
                itemCount: AppCubit.get(context).rights.length
            ),
            const SizedBox(height: 40,) ,
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('الخصوصيه.الشروط.الاعلانات . ملف تعريف الارتباط.المزيد.حقوق.النشر محفوظه @facebook 2021',style: TextStyle(color: Colors.grey),),
            ),
          ],
        ),
      ),
    );
  }
}
