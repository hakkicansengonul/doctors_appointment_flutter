import 'package:doctors_appointment_flutter/Animation/Fade_Animation.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
            ),
            onPressed: () {}),
        title: Text("Message"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          FadeAnimation(
            1.0,
            Container(
              height: 550.0,
              width: double.infinity,
              //color: Colors.red,
              child: ListView(
                children: [
                  incomingMessage(
                      "Yeah Sure happy to help! we have an amazing doctors"),
                  outgoingMessage("Yeah, I have terrible headache"),
                  incomingMessage("Hello, Hakkı, how i can help you?"),
                  outgoingMessage(
                      "Hello Elizabeth, I am sending you my tests,please check."),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          FadeAnimation(
            1.2,
            Container(
              height: 100.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20.0)),
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.add_to_photos_outlined,
                        color: Colors.black,
                      ),
                      onPressed: () {}),
                  Container(
                    height: 50.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        labelText: 'Type a message here',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 45.0,
                    width: 45.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget incomingMessage(String message) {
  return Row(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 80.0),
        child: Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.red, width: 1.0),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2016/09/28/02/35/doctor-1699656__480.jpg"),
                  fit: BoxFit.cover)),
        ),
      ),
      SizedBox(
        width: 10.0,
      ),
      Container(
        height: 100.0,
        width: 300.0,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 1.0),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Padding(
          padding: EdgeInsets.only(top: 10.0, left: 5.0),
          child: Text(
            message,
            textAlign: TextAlign.start,
          ),
        ),
      ),
    ],
  );
}

Widget outgoingMessage(String message) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        height: 100.0,
        width: 300.0,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 1.0),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        padding: EdgeInsets.only(top: 10.0, left: 5.0),
        child: Padding(
          padding: EdgeInsets.only(top: 10.0, left: 5.0),
          child: Text(
            message,
            textAlign: TextAlign.start,
          ),
        ),
      ),
      SizedBox(
        width: 10.0,
      ),
      Padding(
        padding: EdgeInsets.only(top: 80.0),
        child: Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green, width: 1.0),
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://avatars.githubusercontent.com/u/56843071?s=460&u=9285c334652104d0e8fab334bf7de72f35c1f729&v=4"),
                  fit: BoxFit.cover)),
        ),
      ),
    ],
  );
}
