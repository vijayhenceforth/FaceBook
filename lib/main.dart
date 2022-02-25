import 'package:facebook/profile.dart';
import 'package:flutter/material.dart';
import 'package:facebook/Widget/postcreate.dart';
import 'package:facebook/listphoto.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                color: Colors.black,
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            actions: [
              IconButton(
                  color: Colors.black,
                  onPressed: () {},
                  icon: Icon(Icons.search))
            ],
          ),
          body: MyList()),
    );
  }
}

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Profile(),
        const SizedBox(
          height: 10,
        ),
        const PostCreate(),
        SizedBox(
          height: 10,
        ),
        const ListPhoto(),
      ],
    );
  }
}
