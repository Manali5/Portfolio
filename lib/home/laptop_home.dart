import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class LaptopHome extends StatefulWidget {
  @override
  _LaptopHomeState createState() => _LaptopHomeState();
}

class _LaptopHomeState extends State<LaptopHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Row(
          children: [
            Spacer(
              flex: 2,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('Welcome to my Portfolio',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Manali Mahajan',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purpleAccent,
                          fontSize: 50.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 500,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText("--------------------------",
                                  textStyle: TextStyle(
                                      color: Colors.yellowAccent,
                                      fontSize: 50),
                                  speed: Duration(milliseconds: 100)),
                            ],
                            repeatForever: true,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                )),
            Spacer(
              flex: 2,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 60, 30),
                child: Image(
                  image: AssetImage('girl.jpg'),
                  width: MediaQuery.of(context).size.width * 0.34,
                  // height: MediaQuery.of(context).size.height,
                )),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}