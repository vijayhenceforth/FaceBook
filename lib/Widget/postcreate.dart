import 'package:flutter/material.dart';

class PostCreate extends StatelessWidget {
  const PostCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 18, top: 10),
                child: Text(
                  "Post",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Image(
                  image: AssetImage("Assets/images/filter.png"),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10, left: 20),
                child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('Assets/images/girl.jpeg')),
              ),
              SizedBox(
                width: 9,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    // used to disable the line coming through the text field
                    border: InputBorder.none,
                    // Used for the same like above used
                    label: Text(
                      "What's on your mind?",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
