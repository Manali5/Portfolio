import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class MobileSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text('Skills',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ]
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: AnimationConfiguration.toStaggeredList(
                        duration: Duration(seconds: 2),
                        childAnimationBuilder: (widget) => (
                            FadeInAnimation(
                              child: widget,
                            )
                        ),
                        children: [
                          Text('- Fluttter App Development',
                            style: TextStyle(
                              color: Colors.purpleAccent,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('- Fluttter Web Development',
                            style: TextStyle(
                              color: Colors.yellowAccent,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('- Programming in C, C++ and Java',
                            style: TextStyle(
                              color: Colors.cyanAccent,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('- HTML, Python, Visual Basic and Dart',
                            style: TextStyle(
                              color: Colors.purpleAccent,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('- Data Science',
                            style: TextStyle(
                              color: Colors.yellowAccent,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ]
            )
        ),
      ),
    );
  }
}