import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newfacebook/cubit/cubit.dart';
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
      create: (BuildContext context) =>AppCubit()..makeDelay(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          home:  LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints)
              {
                  return  AppCubit.get(context).checkScreenSize(width: constraints.minWidth.toInt(),height:constraints.minHeight.toInt() );
              })
      ),
    );
  }
}

