import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/Component/Header/Avatar.dart';
import 'package:flutter_ui_challenges/src/Component/Modal/Modal.dart';

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
          child: new InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Modal(
                      title: "Ảnh bìa",
                      view: "Xem ảnh bìa",
                      takeScreen: "Chụp ảnh mới",
                      takeDevices: "Chọn ảnh từ thiết bị",
                      img: Image.asset(
                        'assets/modalCover.jpg',
                        width: 20,
                      ),
                    );
                  });
            },
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
