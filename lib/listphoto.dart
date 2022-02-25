import 'package:flutter/material.dart';
import 'package:facebook/listphoto.dart';

class ListPhoto extends StatelessWidget {
  const ListPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = [
      {'name': 'Jerry Luis', 'image': 'Assets/images/girl.jpeg'},
      {'name': 'Jerry Luis', 'image': 'Assets/images/girl.jpeg'},
      {'name': 'Jerry Luis', 'image': 'Assets/images/girl.jpeg'},
      {'name': 'Jerry Luis', 'image': 'Assets/images/girl.jpeg'},
      {'name': 'Jerry Luis', 'image': 'Assets/images/girl.jpeg'},
    ];

    return Column(
      children: data
          .map((item) => Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Container(
                    height: 400,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 18),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage(item['image']),
                                    ),
                                  ),
                                  Text(
                                    item['name'],
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                          Expanded(
                            child: Image(
                                image: AssetImage(
                                  "Assets/images/girl.jpeg",
                                ),
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    )),
              ))
          .toList(),
    );
  }
}
