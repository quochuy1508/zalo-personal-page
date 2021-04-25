import 'package:flutter/material.dart';
import 'HorizontalItem.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';

class HorizontalListAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 20.0),
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          HorizontalItem(
            title: "Ảnh của tôi",
            subTitle: "Xem tất cả ảnh và video\nđã đăng",
            count: 0,
            image: NetworkImage(avatars[0]),
            icon: Icon(Icons.panorama, color: Colors.white),
          ),
          HorizontalItem(
            title: "Kỷ niệm năm xưa",
            subTitle: "Nơi lưu giữ những kỷ niệm\nđáng nhớ",
            count: 0,
            image: NetworkImage(avatars[0]),
            icon: Icon(Icons.more_time, color: Colors.white),
            gradientStart: Color.fromARGB(255, 236, 178, 120),
            gradientEnd: Color.fromARGB(100, 236, 175, 110),
          ),
          HorizontalItem(
            title: "Yêu thích nhất",
            subTitle: "Ảnh được thả tim nhiều\nnhất",
            count: 1,
            image: NetworkImage(avatars[0]),
            icon: Icon(Icons.favorite, color: Colors.white),
            gradientStart: Color.fromARGB(255, 15, 98, 112),
            gradientEnd: Color.fromARGB(100, 15, 98, 112),
          ),
          HorizontalItem(
            title: "Bình luận nhiều",
            subTitle: "Ảnh nhận được nhiều bình\nluận",
            count: 1,
            image: NetworkImage(avatars[0]),
            icon: Icon(Icons.textsms, color: Colors.white),
            gradientStart: Color.fromARGB(255, 174, 191, 194),
            gradientEnd: Color.fromARGB(100, 174, 191, 194),
          ),
          HorizontalItem(
            title: "Video của tôi",
            subTitle: "Xem các video đã đăng",
            count: 0,
            image: NetworkImage(avatars[0]),
            icon: Icon(Icons.videocam, color: Colors.white),
            gradientStart: Color.fromARGB(255, 255, 153, 130),
            gradientEnd: Color.fromARGB(100, 255, 153, 130),
          )
        ],
      ),
    );
  }
}
