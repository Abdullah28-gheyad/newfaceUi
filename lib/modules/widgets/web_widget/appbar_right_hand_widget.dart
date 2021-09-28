import 'package:flutter/material.dart';

class AppBarRightHandWidget extends StatelessWidget {
  const AppBarRightHandWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: const [
                    Expanded(
                        child: Text(
                          'Search Facebook',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )),
                    Icon(
                      Icons.search,
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.facebook,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
