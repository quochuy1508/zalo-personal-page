/**
 * Author: Leonard Ho
 * profile: https://github.com/quochuy1508
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/Component/Body/BodyProfile.dart';
import 'package:flutter_ui_challenges/src/Component/Header/ProfileHeader.dart';
import 'package:flutter_ui_challenges/src/Component/Slider/HorizontalListAsset.dart';

class ProfileEightPage extends StatelessWidget {
  static final String path = "lib/src/pages/profile/profile8.dart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
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
                avatar: NetworkImage(images[2]),
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
              BodyProfile()
            ],
          ),
        ));
  }
}
