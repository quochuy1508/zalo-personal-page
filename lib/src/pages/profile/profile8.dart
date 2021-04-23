/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:timelines/timelines.dart';

class ProfileEightPage extends StatelessWidget {
  static final String path = "lib/src/pages/profile/profile8.dart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          actions: <Widget>[
            Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ProfileHeader(
                avatar: NetworkImage(avatars[0]),
                coverImage: NetworkImage(images[1]),
                title: "Ramesh Mana",
                subtitle: "Manager",
                // actions: <Widget>[
                //   MaterialButton(
                //     color: Colors.white,
                //     shape: CircleBorder(),
                //     elevation: 0,
                //     child: Icon(Icons.edit),
                //     onPressed: () {},
                //   )
                // ],
              ),
              const SizedBox(height: 10.0),
              HorizontalListAsset(),
              _DeliveryProcesses()
              // Timeline(
              //   children: <Widget>[
              //     Container(height: 100, color: Colors.white),
              //     Container(height: 50, color: Colors.redAccent),
              //     Container(height: 200, color: Colors.amberAccent),
              //     Container(height: 100, color: Colors.amberAccent),
              //   ],
              //   indicators: <Widget>[
              //     Icon(Icons.access_alarm),
              //     Icon(Icons.backup),
              //     Icon(Icons.accessibility_new),
              //     Icon(Icons.access_alarm),
              //   ],
              // ),

              // UserInfo(),
              // UserInfo(),
            ],
          ),
        ));
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
            alignment: Alignment.topLeft,
            child: Text(
              "User Information",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Card(
            child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      ...ListTile.divideTiles(
                        color: Colors.grey,
                        tiles: [
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 4),
                            leading: Icon(Icons.my_location),
                            title: Text("Location"),
                            subtitle: Text("Kathmandu"),
                          ),
                          ListTile(
                            leading: Icon(Icons.email),
                            title: Text("Email"),
                            subtitle: Text("sudeptech@gmail.com"),
                          ),
                          ListTile(
                            leading: Icon(Icons.phone),
                            title: Text("Phone"),
                            subtitle: Text("99--99876-56"),
                          ),
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text("About Me"),
                            subtitle: Text(
                                "This is a about me link and you can khow about me in this section."),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  final ImageProvider<dynamic> coverImage;
  final ImageProvider<dynamic> avatar;
  final String title;
  final String subtitle;
  final List<Widget> actions;

  const ProfileHeader(
      {Key key,
      @required this.coverImage,
      @required this.avatar,
      @required this.title,
      this.subtitle,
      this.actions})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Ink(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image: coverImage, fit: BoxFit.cover),
          ),
        ),
        Ink(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.black38,
          ),
        ),
        // if (actions != null)
        //   Container(
        //     width: double.infinity,
        //     height: 200,
        //     padding: const EdgeInsets.only(bottom: 0.0, right: 0.0),
        //     alignment: Alignment.bottomRight,
        //     child: Row(
        //       mainAxisSize: MainAxisSize.min,
        //       children: actions,
        //     ),
        //   ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 130),
          child: Column(
            children: <Widget>[
              Avatar(
                image: avatar,
                radius: 50,
                backgroundColor: Colors.white,
                borderColor: Colors.white,
                borderWidth: 1.0,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              ),
              if (subtitle != null) ...[
                const SizedBox(height: 5.0),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.caption,
                ),
              ]
            ],
          ),
        )
      ],
    );
  }
}

class Avatar extends StatelessWidget {
  final ImageProvider<dynamic> image;
  final Color borderColor;
  final Color backgroundColor;
  final double radius;
  final double borderWidth;

  const Avatar(
      {Key key,
      @required this.image,
      this.borderColor = Colors.grey,
      this.backgroundColor,
      this.radius = 30,
      this.borderWidth = 5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius + borderWidth,
      backgroundColor: borderColor,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColor != null
            ? backgroundColor
            : Theme.of(context).primaryColor,
        child: CircleAvatar(
          radius: radius - borderWidth,
          backgroundImage: image,
        ),
      ),
    );
  }
}

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
            // image: NetworkImage(avatars[0]),
            icon: Icon(Icons.panorama, color: Colors.white),
          ),
          HorizontalItem(
            title: "Kỷ niệm năm xưa",
            subTitle: "Nơi lưu giữ những kỷ niệm\nđáng nhớ",
            count: 0,
            // image: NetworkImage(avatars[0]),
            icon: Icon(Icons.more_time, color: Colors.white),
            gradientStart: Color.fromARGB(255, 236, 178, 120),
            gradientEnd: Color.fromARGB(100, 236, 175, 110),
          ),
          HorizontalItem(
            title: "Yêu thích nhất",
            subTitle: "Ảnh được thả tim nhiều\nnhất",
            count: 1,
            // image: NetworkImage(avatars[0]),
            icon: Icon(Icons.favorite, color: Colors.white),
            gradientStart: Color.fromARGB(255, 15, 98, 112),
            gradientEnd: Color.fromARGB(100, 15, 98, 112),
          ),
          HorizontalItem(
            title: "Bình luận nhiều",
            subTitle: "Ảnh nhận được nhiều bình\nluận",
            count: 1,
            // image: NetworkImage(avatars[0]),
            icon: Icon(Icons.textsms, color: Colors.white),
            gradientStart: Color.fromARGB(255, 174, 191, 194),
            gradientEnd: Color.fromARGB(100, 174, 191, 194),
          ),
          HorizontalItem(
            title: "Video của tôi",
            subTitle: "Xem các video đã đăng",
            count: 0,
            // image: NetworkImage(avatars[0]),
            icon: Icon(Icons.videocam, color: Colors.white),
            gradientStart: Color.fromARGB(255, 255, 153, 130),
            gradientEnd: Color.fromARGB(100, 255, 153, 130),
          )
        ],
      ),
    );
  }
}

class HorizontalItem extends StatelessWidget {
  final ImageProvider<dynamic> image;
  final Color gradientStart;
  final Color gradientEnd;
  final Icon icon;
  final int count;
  final String title;
  final String subTitle;

  const HorizontalItem({
    Key key,
    this.image,
    this.gradientStart = Colors.green,
    this.gradientEnd = Colors.white,
    this.icon,
    @required this.title,
    @required this.subTitle,
    this.count,
  }) : super(key: key);

  Widget build(BuildContext context) {
    const colorBorder = const Color(0x00FFFFF);
    return Container(
      width: 220,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(margin: EdgeInsets.only(right: 10), child: this.icon),
                Text(
                  this.title +
                      (this.count != 0 ? this.count.toString() + ")" : ''),
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  this.subTitle,
                  style: TextStyle(color: Colors.white, fontSize: 11),

                  // overflow: TextOverflow.fade,
                ),
              ],
            ),
          ]),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: colorBorder),
          image: this.image != null
              ? DecorationImage(
                  image: this.image,
                  fit: BoxFit.contain,
                )
              : null,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              this.gradientStart,
              this.gradientEnd,
            ],
          )),
      height: 50,
    );
  }
}

class _DeliveryProcesses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        color: Color(0xff9b9b9b),
        fontSize: 20,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FixedTimeline.tileBuilder(
          theme: TimelineThemeData(
            nodePosition: 0,
            color: Color(0xff989898),
            indicatorTheme: IndicatorThemeData(
              position: 0,
              size: 10.0,
            ),
            connectorTheme: ConnectorThemeData(
              thickness: 1.5,
            ),
          ),
          builder: TimelineTileBuilder.connected(
            connectionDirection: ConnectionDirection.before,
            itemCount: 10,
            contentsBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("ABC"),
                    Container(height: 100, color: Colors.white)
                  ],
                ),
              );
            },
            indicatorBuilder: (_, index) {
              return OutlinedDotIndicator(borderWidth: 1.5, size: 12);
            },
            connectorBuilder: (_, index, ___) => SolidLineConnector(
              color: Color.fromARGB(255, 194, 194, 194),
            ),
          ),
        ),
      ),
    );
  }
}
