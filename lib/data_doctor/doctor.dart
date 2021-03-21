import 'package:flutter/material.dart';

List DoctorPageList = [
  DoctorPage(
    imgurl:
        "https://cdn.pixabay.com/photo/2017/01/31/22/32/boy-2027768__480.png",
    name0: "Hakkı Can ŞENGÖNÜL",
    name1: "General Surgeon",
  ),
  DoctorPage(
    imgurl:
        "https://cdn.pixabay.com/photo/2017/01/31/22/32/cartoon-2027771__480.png",
    name0: "Elizabeth MARİA",
    name1: "Neurologist",
  ),
  DoctorPage(
    imgurl:
        "https://cdn.pixabay.com/photo/2017/01/31/22/32/boy-2027768__480.png",
    name0: "Connor Ellington",
    name1: "Neurologist",
  ),
];

class DoctorPage extends StatelessWidget {
  final String imgurl;
  final String name0;
  final String name1;

  const DoctorPage({this.imgurl, this.name0, this.name1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 10.0,
        top: 5.0,
      ),
      child: Material(
        child: Center(
          child: Container(
            height: 250.0,
            width: 400.0,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 200.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(imgurl), fit: BoxFit.cover)),
                ),
                Container(
                  height: 200.0,
                  width: 150.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name0,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star_half,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        name1,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 40.0,
                        width: 140.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.black),
                        child: Center(
                          child: Text(
                            "Appointment",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  //  color: Colors.green,
                ),
                Container(
                  height: 50.0,
                  width: 40.0,
                  child: Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
