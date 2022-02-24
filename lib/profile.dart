import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        color: Colors.white,
        child: Column(children: [
          SizedBox(height: 30),
          Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Column(children: [
                Container(
                  color: Colors.white,
                  height: 300,
                  child: Stack(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                          child: Image(
                              image: AssetImage(
                                  'Assets/images/towerbridge.jpeg'))),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Positioned(
                          bottom: 1,
                          child: CircleAvatar(
                            backgroundImage:
                            AssetImage('Assets/images/girl.jpeg'),
                            onBackgroundImageError: (e, s) {
                              debugPrint('image issue, $e, $s');
                            },
                            radius: 70,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 19, bottom: 17),
                  child: Text(
                    "Jerry Luis",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ]))
        ]));
  }
}
