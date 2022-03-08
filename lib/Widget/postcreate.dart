import 'package:flutter/material.dart';
import 'package:facebook/Widget/postadd.dart';
import 'package:flutter/cupertino.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';

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
            children: [
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
              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Image(
                    image: AssetImage("Assets/images/filter.png"),
                  ),
                ),
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(10)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Post Filters',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Divider(
                              height: 27,
                              thickness: 0.6,
                              color: Colors.black26,
                            ),
                            Row(
                              children: [
                                Icon(Icons.calendar_today_outlined),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Go To"),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width,
                                  child: DropdownDatePicker(
                                    isDropdownHideUnderline: true,
                                    startYear: 2000,
                                    endYear: 2022,
                                    width: 5,
                                    onChangedDay: (value) =>
                                        print('onChangedDay: $value'),
                                    onChangedMonth: (value) =>
                                        print('onChangedMonth: $value'),
                                    onChangedYear: (value) =>
                                        print('onChangedYear: $value'),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 150,
                                  height: 40,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                              width: 1.0,
                                              color: Colors.black54),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(3.0),
                                          ),
                                          primary: Colors.white,
                                          alignment: Alignment.bottomLeft),
                                      child: Center(
                                        child: Text(
                                          "Clear",
                                          style: TextStyle(
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      }),
                                ),
                                SizedBox(
                                  width: 150,
                                  height: 40,
                                  child: RaisedButton(
                                    onPressed: () {},
                                    child: Text("Done"),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10, left: 20),
                child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('Assets/images/girl.jpeg')),
              ),
              // const SizedBox(
              //   width: 10,
              // ),
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
