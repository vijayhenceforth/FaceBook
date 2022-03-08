import 'package:flutter/material.dart';
import 'package:facebook/Widget/listphoto.dart';
import 'package:facebook/Widget/update_post.dart';

class ListPhoto extends StatefulWidget {
  const ListPhoto({Key? key}) : super(key: key);

  @override
  _ListPhotoState createState() => _ListPhotoState();
}

class _ListPhotoState extends State<ListPhoto> {
  @override
  Widget build(BuildContext context) {
    List data = [
      {'name': 'Jerry Luis', 'image': 'Assets/images/girl.jpeg'},
      {'name': 'Jerry Luis', 'image': 'Assets/images/girl.jpeg'},
      {'name': 'Jerry Luis', 'image': 'Assets/images/girl.jpeg'},
      {'name': 'Jerry Luis', 'image': 'Assets/images/girl.jpeg'},
      {'name': 'Jerry Luis', 'image': 'Assets/images/girl.jpeg'},
    ];

    List<String> drop = ['Update', 'Delete'];

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
                              Container(
                                padding: EdgeInsets.all(10),
                                child: DropdownButton(
                                  elevation: 0,
                                  underline: Container(),
                                  alignment: Alignment.topRight,
                                  icon: const Icon(Icons.more_horiz),
                                  items: drop.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? dropvalue) {
                                    setState(() {
                                      if (dropvalue == "Update") {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Update_Post()));
                                      } else if (dropvalue == "Delete") {
                                      } else {
                                      }
                                      ;
                                    });
                                  },
                                ),
                              ),
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
