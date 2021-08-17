import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class MobileContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
            children:[
              Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text('Contact Me',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: AnimationConfiguration.toStaggeredList(
                    duration: Duration(seconds: 2),
                    childAnimationBuilder: (widget) =>
                    (
                        FadeInAnimation(
                          child: widget,
                        )
                    ),
                    children: [
                      Text('Phone No.: 9067434524',
                        style: TextStyle(
                          color: Colors.purpleAccent,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Email Id: f20201012@goa.bits-pilani.ac.in',
                        style: TextStyle(
                          color: Colors.yellowAccent,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Discord: Manali#3320',
                        style: TextStyle(
                          color: Colors.cyanAccent,
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
      ),
    );
  }
}