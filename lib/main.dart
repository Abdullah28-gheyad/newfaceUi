import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newfacebook/cubit/cubit.dart';
import 'package:newfacebook/modules/screens/phone_screen.dart';
import 'package:newfacebook/modules/screens/web_screen.dart';
import 'package:newfacebook/shared/bloc_observer.dart';
import 'package:newfacebook/shared/style/style.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>AppCubit()..makeDuration(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        home:  LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints)
            {

              print (constraints.minWidth.toInt()) ;
              print (constraints.minHeight.toInt()) ;
              if (constraints.minWidth.toInt() <=500||constraints.minHeight.toInt() <=500) {
                return const HomePhoneScreen();
              }
              return HomeWebScreen() ;
            })
      ),
    );
  }



}
