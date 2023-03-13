import 'package:flutter/material.dart';
import 'package:social_network/component/new_post.dart';
import 'package:social_network/component/recommend_post.dart';
import 'package:social_network/component/status_post.dart';

class homeBody extends StatelessWidget {
  const homeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          newPost(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: <Widget>[
              recommendPost(
                imgName: 'img1',
                relContent: 'Newfeeds 1',
              ),
              recommendPost(
                imgName: 'img2',
                relContent: 'Newfeeds 2',
              ),
              recommendPost(
                imgName: 'img3',
                relContent: 'Newfeeds 3',
              ),
              recommendPost(
                imgName: 'img6',
                relContent: 'Newfeeds 4',
              ),
              recommendPost(
                imgName: 'img4',
                relContent: 'Newfeeds 5',
              ),
            ]),
          ),
          statusPost(
            imgName: 'img1',
            posterName: 'Hải Quân 1',
          ),
          statusPost(
            imgName: 'img2',
            posterName: 'Hải Quân 2',
          ),
          statusPost(
            imgName: 'img3',
            posterName: 'Hải Quân 3',
          ),
          statusPost(
            imgName: 'img4',
            posterName: 'Hải Quân 4',
          ),
          statusPost(
            imgName: 'img5',
            posterName: 'Hải Quân 5',
          ),
          statusPost(
            imgName: 'img6',
            posterName: 'Hải Quân 6',
          ),
        ],
      ),
    );
  }
}
