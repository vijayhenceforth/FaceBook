import 'package:flutter/material.dart';
import 'package:facebook/postadd.dart';

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
              const SizedBox(
                width: 19,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PostAdd()),
                    );
                  },
                  child: Text(
                    "What's on your mind?",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w300),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
