import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton({required this.text,this.function}) ;
  late String text ;
  Function? function = (){} ;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35,
        decoration: BoxDecoration(
            color: Colors.lightBlue[50],
            borderRadius:
            BorderRadius.circular(10)),
        child: MaterialButton(
            onPressed: () {
              function!;
            },
            child:  Text(
              text,
              style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )));
  }
}
