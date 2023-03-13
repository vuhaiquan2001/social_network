import 'package:flutter/material.dart';
import 'package:social_network/component/constants.dart';

class recommendPost extends StatelessWidget {
  final String imgName;
  final String relContent;

  const recommendPost(
      {super.key, required this.imgName, required this.relContent});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: defaultPadding / 2,
                  top: defaultPadding / 2,
                  right: defaultPadding / 2),
              width: size.width * 0.4,
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    child: Image.asset('assets/imgs/$imgName.jpg'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  Container(
                    padding: EdgeInsets.all(defaultPadding / 2),
                    child: Row(children: <Widget>[
                      Text(
                        '$relContent',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      )
                    ]),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            )
          ],
        ));
  }
}
