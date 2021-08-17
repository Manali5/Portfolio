import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: AnimationConfiguration.toStaggeredList(
              duration: Duration(seconds: 2),
              childAnimationBuilder: (widget) => SlideAnimation(
                child: FadeInAnimation(
                  child: widget,
                ),
              ),
              children: [
                Text('Hello!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Welcome to my Portfolio',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18),
                ),
                Text('Manali Mahajan',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purpleAccent,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 280,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText('---------------------------',
                              textAlign: TextAlign.center,
                              textStyle: TextStyle(
                                  color: Colors.yellowAccent, fontSize: 30),
                              speed: Duration(milliseconds: 100)),
                        ],
                        repeatForever: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Image(
                  image: AssetImage('girl.jpg'),
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            )
        ),
      ),
    );
  }
}