import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class MobileAbout extends StatelessWidget {
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
                        Text('About Me',
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
                          Text('Hello. My name is Manali Mahajan. I am pursuing an undergraduate degree in Computer Science from Birla Institute of Technology and Science, K. K. Birla Goa Campus. I am currently in my second year.',
                            style: TextStyle(
                              color: Colors.purpleAccent,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('I have been developing Android and IOS applications in flutter for about two months now. This portfolio is myfirst venture into web applications developed using flutter.',
                            style: TextStyle(
                              color: Colors.yellowAccent,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('I have also been doing multiple courses on Data Science and have taken part in several Kaggle competitions. I have done courses on Python, Pandas, Numpy, Machine Learning, Feature Learning and Data Visualization among others.',
                            style: TextStyle(
                              color: Colors.cyanAccent,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Coding is something that I enjoy. I like coming up with efficient algorithms and solutions to problems. In the past, I have done coding in Java, C, C++, HTML, Python, Visual Basic and now even Dart.',
                            style: TextStyle(
                              color: Colors.purpleAccent,
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