import 'package:flutter/material.dart';
import 'package:facebook/main.dart';

class Update_Post extends StatefulWidget {
  const Update_Post({Key? key}) : super(key: key);

  @override
  _Update_PostState createState() => _Update_PostState();
}
class _Update_PostState extends State<Update_Post> {
  TextEditingController txtcontroller = new TextEditingController();
  String title = "Jerry Luis";
  bool _isEditingText = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black87,
                ));
          }),
          actions: [
            TextButton(
              onPressed: null,
              child: Text("Post",
                  style: TextStyle(fontSize: 16, color: Colors.blue)),
            )
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://i.picsum.photos/id/1004/5616/3744.jpg?hmac=Or7EJnz-ky5bsKa9_frdDcDCR9VhCP8kMnbZV6-WOrY")),
                      ),
                      Expanded(
                        child: !_isEditingText
                            ? Text(title)
                            : TextFormField(
                                textInputAction: TextInputAction.done,
                                onFieldSubmitted: (value) {
                                  setState(() =>
                                      {_isEditingText = false, title = value});
                                },
                                initialValue: title,
                                decoration: InputDecoration(
                                    disabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    hintStyle: TextStyle(
                                        color: Colors.black, fontSize: 32)),
                              ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.black38,
                      size: 22,
                    ),
                    onPressed: () {
                      setState(() {
                        _isEditingText = true;
                      });
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(1),
              child: Image.network(
                  'https://i.picsum.photos/id/1004/5616/3744.jpg?hmac=Or7EJnz-ky5bsKa9_frdDcDCR9VhCP8kMnbZV6-WOrY'),
            ),
          ],
        ),
      ),
    );
  }
}
