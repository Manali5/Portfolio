import 'package:portfolio/about/laptop_about.dart';
import 'package:portfolio/blogs/laptop_blogs.dart';
import 'package:portfolio/certifications/laptop_certifications.dart';
import 'package:portfolio/contact/laptop_contact.dart';
import 'package:portfolio/home/laptop_home.dart';
import 'package:portfolio/projects/laptop_projects.dart';
import 'package:portfolio/skills/laptop_skills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hovering/hovering.dart';

class Laptop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _list = [
      SafeArea(child: LaptopHome()),
      SafeArea(child: LaptopAbout()),
      SafeArea(child: LaptopProjects()),
      SafeArea(child: LaptopSkills()),
      SafeArea(child: LaptopCertifications()),
      SafeArea(child: LaptopContact()),
      SafeArea(child: LaptopBlogs()),
    ];
    PageController controller = PageController(viewportFraction: 1);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey[900],
          elevation: 0,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: AnimationConfiguration.toStaggeredList(
                duration: Duration(seconds: 2),
                childAnimationBuilder: (widget) => SlideAnimation(
                  child: FadeInAnimation(
                    child: widget,
                  ),
                ),
                children: [
                  Text('Manali Mahajan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),),
                  SizedBox(
                    width: 30,
                  ),
                  HoverButton(
                    onpressed: () {
                      controller.animateToPage(0,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOutSine);
                    },
                    hoverColor: Colors.purpleAccent,
                    height: 45,
                    minWidth: 90,
                    child: Text('HOME',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  HoverButton(
                    onpressed: () {
                      controller.animateToPage(1,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOutSine);
                    },
                    hoverColor: Colors.purpleAccent,
                    height: 45,
                    minWidth: 110,
                    child: Text('ABOUT ME',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
              HoverButton(
                onpressed: () {
                  controller.animateToPage(2,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInOutSine);
                },
                hoverColor: Colors.purpleAccent,
                height: 45,
                minWidth: 110,
                child: Text('PROJECTS',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white),
                ),
              ),
                  HoverButton(
                    onpressed: () {
                      controller.animateToPage(3,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOutSine);
                    },
                    hoverColor: Colors.purpleAccent,
                    height: 45,
                    minWidth: 80,
                    child: Text('SKILLS',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  HoverButton(
                    onpressed: () {
                      controller.animateToPage(4,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOutSine);
                    },
                    hoverColor: Colors.purpleAccent,
                    height: 45,
                    minWidth: 150,
                    child: Text('CERTIFICATIONS',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  HoverButton(
                    onpressed: () {
                      controller.animateToPage(5,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOutSine);
                    },
                    hoverColor: Colors.purpleAccent,
                    height: 45,
                    minWidth: 130,
                    child: Text('CONTACT ME',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  HoverButton(
                    onpressed: () {
                      controller.animateToPage(6,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOutSine);
                    },
                    hoverColor: Colors.purpleAccent,
                    height: 45,
                    minWidth: 110,
                    child: Text('BLOGS',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                ],
              )
          )
      ),
      body: RawScrollbar(
        timeToFade: Duration(milliseconds: 1500),
        controller: controller,
        thumbColor: Colors.white,
        thickness: 10,
        radius: Radius.circular(20),
        child: PageView(
          scrollDirection: Axis.vertical,
          pageSnapping: false,
          controller: controller,
          children: _list,
        ),
      ),
    );
  }
}