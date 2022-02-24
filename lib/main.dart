import 'package:facebook/profile.dart';
import 'package:flutter/material.dart';

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
                color: Colors.black, onPressed: () {}, icon: Icon(Icons.search))
          ],
        ),
        body: Column(
          children: [
            const Profile(),
            const SizedBox(
              height: 10,
            ),
            Container(
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
                     Text(
                          "Post",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),

                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          child: Image(image: AssetImage("Assets/images/filter.png"),),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10, left: 10),
                        child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                            AssetImage('Assets/images/girl.jpeg')),
                      ),
                      Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              // used to disable the line coming through the text field
                              border: InputBorder.none,   // Used for the same like above used
                                label: Text("What's on your mind?")),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
