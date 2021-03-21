import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:doctors_appointment_flutter/Animation/Fade_Animation.dart';
import 'package:doctors_appointment_flutter/screens/homehome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.green,
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            //stops: [0.1, 0.4, 0.7, 0.9],
            colors: [
              Colors.green,
              Colors.green,
              Colors.grey,
              Colors.grey,
              Colors.grey,
              Colors.grey,
              Colors.grey,
            ],
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeHome()));
                    },
                    child: FadeAnimation(
                      2.4,
                      Text(
                        "Skip",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 600.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: [
                      Padding(
                        padding: EdgeInsets.all(50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: FadeAnimation(
                                1.1,
                                Image(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2017/01/31/17/25/doctor-2025725__480.png",
                                  ),
                                  width: 300.0,
                                  height: 300.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            FadeAnimation(
                              1.2,
                              Text(
                                "Quality team and service",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            FadeAnimation(
                              1.3,
                              Text(
                                "You can make an appointment with the doctor and the field you want",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: FadeAnimation(
                                1.1,
                                Image(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2016/09/30/23/47/hospital-1706646__480.png",
                                  ),
                                  width: 300.0,
                                  height: 300.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            FadeAnimation(
                              1.2,
                              Text(
                                "Correct treatment process",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            FadeAnimation(
                              1.3,
                              Text(
                                "After your diseases are detected in a short time, the most accurate treatment is started.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(45.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: FadeAnimation(
                                1.1,
                                Image(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2013/07/13/09/49/influenza-156098__480.png",
                                  ),
                                  width: 300.0,
                                  height: 300.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            FadeAnimation(
                              1.2,
                              Text(
                                "You will be under constant surveillance",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            FadeAnimation(
                              1.3,
                              Text(
                                "Doctors intervene immediately in the slightest trouble",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () {
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextLiquidFill(
                                  loadDuration: Duration(milliseconds: 3000),
                                  text: 'Next',
                                  waveColor: Colors.white,
                                  boxBackgroundColor: Colors.grey,
                                  textStyle: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  boxHeight: 40.0,
                                  boxWidth: 90.0,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                FadeAnimation(
                                  1.5,
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 30.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(""),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 100.0,
              width: double.infinity,
              color: Colors.white,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeHome()));
                },
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: FadeAnimation(
                      1.4,
                      Text(
                        "Get Started",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(""),
    );
  }
}
