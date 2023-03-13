import 'package:flutter/material.dart';
import 'package:social_network/component/constants.dart';

class statusPost extends StatelessWidget {
  final String imgName;
  final String posterName;
  bool iscomment(bool comment) {
    return !comment;
  }

  const statusPost(
      {super.key, required this.imgName, required this.posterName});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(defaultPadding / 2),
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(children: <Widget>[
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(defaultPadding / 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              'assets/imgs/$imgName.jpg',
                              width: size.width * 0.17,
                              fit: BoxFit.scaleDown,
                            ),
                            borderRadius: BorderRadius.circular(500),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: defaultPadding / 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '$posterName',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[900]),
                                ),
                                Text(
                                  '3 giờ trước',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[600]),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () => {}, icon: Icon(Icons.more_horiz))
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(defaultPadding / 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Bro i cant even describe how much you helped me. I didn\'t know what was THE mistake but i realized it after i watched your video. Thank you so much i can devolop my app faster now! Have a nice day',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[900]),
                        ),
                      ],
                    )),
                ClipRRect(
                  child: Image.asset('assets/imgs/$imgName.jpg'),
                ),
                Container(
                  margin: EdgeInsets.all(defaultPadding / 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                          onPressed: () => {},
                          icon: Icon(Icons.favorite_border)),
                      IconButton(
                          onPressed: () => {},
                          icon: Icon(Icons.chat_bubble_outline)),
                      IconButton(
                          onPressed: () => {}, icon: Icon(Icons.ios_share))
                    ],
                  ),
                ),
              ],
            )
          ]),
        )
      ],
    );
  }
}
