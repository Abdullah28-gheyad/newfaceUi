import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border:
            Border.all(color: Colors.grey[200]!)),
        child: const Padding(
          padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
              bottom: 10),
          child: Text(
            'What\'s on your mind?',
            style: TextStyle(fontSize: 17),
          ),
        ),
      ),
    ) ;
  }
}
