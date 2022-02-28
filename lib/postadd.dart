import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

main() {
  runApp(PostAdd());
}

class PostAdd extends StatefulWidget {
  const PostAdd({Key? key}) : super(key: key);

  @override
  State<PostAdd> createState() => _PostAddState();
}

class _PostAddState extends State<PostAdd> {
  TextEditingController textctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 0.5,
            centerTitle: true,
            backgroundColor: Colors.white,
            flexibleSpace: SafeArea(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          color: Colors.black,
                          icon: Icon(Icons.arrow_back_outlined),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: Text(
                            "Create Post",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Post",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ))
                  ],
                ),
              ),
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage("Assets/images/girl.jpeg"),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    "Jerry Luis",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 17),
                      child: TextField(
                        cursorColor: Colors.black,
                        cursorHeight: 25,
                        cursorWidth: 2,
                        controller: textctrl,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          hintText: "What's on your mind?",
                          hintStyle: TextStyle(
                              color: Colors.black26,
                              fontWeight: FontWeight.w400,
                              fontSize: 29),
                        ),
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.start))
                ],
              )
            ],
          )),
    );
  }
}
