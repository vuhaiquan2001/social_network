import 'package:flutter/material.dart';

import 'constants.dart';

class newPost extends StatelessWidget {
  const newPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultPadding / 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(defaultPadding / 4),
            child: ClipRRect(
              child: Image.asset(
                'assets/imgs/img2.jpg',
                width: 70,
                fit: BoxFit.scaleDown,
              ),
              borderRadius: BorderRadius.circular(500),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                height: 60,
                margin: EdgeInsets.all(defaultPadding / 4),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Đăng tải tâm trạng của bạn...',
                      border: OutlineInputBorder()),
                ),
              )),
          Container(
            margin: EdgeInsets.all(defaultPadding / 4),
            child: Icon(
              Icons.photo_library_outlined,
              size: 30.0,
              color: myPrimaryColor,
            ),
          )
        ],
      ),
    );
  }
}
