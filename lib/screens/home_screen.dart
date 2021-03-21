import 'package:doctors_appointment_flutter/Animation/Fade_Animation.dart';
import 'package:doctors_appointment_flutter/data_doctor/doctor.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: FadeAnimation(
          1.0,
          IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {}),
        ),
        title: FadeAnimation(
          1.0,
          Text(
            "Appointment",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          FadeAnimation(
            1.0,
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Stack(
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/56843071?s=460&u=9285c334652104d0e8fab334bf7de72f35c1f729&v=4"),
                            fit: BoxFit.cover),
                        border: Border.all(color: Colors.grey)),
                  ),
                  Positioned(
                    top: 0.0,
                    right: 2.0,
                    child: Container(
                      height: 12.0,
                      width: 12.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            FadeAnimation(
              1.0,
              Center(
                child: Container(
                  height: 450.0,
                  width: 380.0,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 400.0,
                          width: 380.0,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0.0, 4.0),
                                color: Colors.grey.withOpacity(.6),
                              ),
                            ],
                            color: Colors.black,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2015/03/25/08/49/week-688662__480.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40.0,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Filter",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0),
                                    ),
                                    Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        child: Center(
                                            child: IconButton(
                                                icon: Icon(
                                                  Icons.filter_list,
                                                  size: 26.0,
                                                ),
                                                onPressed: () {})))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Availibility",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 58.0,
                                          width: 170.0,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hoverColor: Colors.white,
                                              fillColor: Colors.white,
                                              focusColor: Colors.white,
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              labelText: 'from',
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Container(
                                          height: 58.0,
                                          width: 170.0,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hoverColor: Colors.white,
                                              fillColor: Colors.white,
                                              focusColor: Colors.white,
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              labelStyle: TextStyle(
                                                  textBaseline:
                                                      TextBaseline.alphabetic),
                                              labelText: 'to',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Choose free date",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      height: 58.0,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "21 March 2021",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            IconButton(
                                                icon: Icon(Icons.date_range),
                                                onPressed: () {})
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 120.0,
                        child: Container(
                          height: 60.0,
                          width: 140.0,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0.0, 4.0),
                                color: Colors.black.withOpacity(.6),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "Accept",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            FadeAnimation(
              1.0,
              Container(
                height: 300.0,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: DoctorPageList.length,
                  itemBuilder: (context, index) {
                    return DoctorPageList[index];
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
