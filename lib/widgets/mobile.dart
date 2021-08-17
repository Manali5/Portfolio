import 'package:portfolio/about/mobile_about.dart';
import 'package:portfolio/blogs/mobile_blogs.dart';
import 'package:portfolio/certifications/mobile_certifications.dart';
import 'package:portfolio/contact/mobile_contact.dart';
import 'package:portfolio/home/mobile_home.dart';
import 'package:portfolio/projects/mobile_projects.dart';
import 'package:portfolio/skills/mobile_skills.dart';
import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _list = [
      SafeArea(child: MobileHome(),),
      SafeArea(child: MobileAbout()),
      SafeArea(child: MobileProjects()),
      SafeArea(child: MobileSkills(),),
      SafeArea(child: MobileCertifications()),
      SafeArea(child: MobileContact()),
      SafeArea(child: MobileBlogs()),
    ];
    PageController controller = PageController(viewportFraction: 1.1);
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              hoverColor: Colors.black,
              title: Text('HOME',
                style: TextStyle(
                    color: Colors.white),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onTap: () {
                controller.animateToPage(0,
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.easeInOutSine);
                Navigator.pop(context);
              },
            ),
            ListTile(
              hoverColor: Colors.black,
              title: Text('ABOUT ME',
                style: TextStyle(
                    color: Colors.white),
              ),
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onTap: () {
                controller.animateToPage(1,
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.easeInOutSine);
                Navigator.pop(context);
              },
            ),
            ListTile(
              hoverColor: Colors.black,
              title: Text('PROJECTS',
                style: TextStyle(
                    color: Colors.white),
              ),
              leading: Icon(
                Icons.folder,
                color: Colors.white,
              ),
              onTap: () {
                controller.animateToPage(2,
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.easeInOutSine);
                Navigator.pop(context);
              },
            ),
            ListTile(
              hoverColor: Colors.black,
              title: Text('SKILLS',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.school,
                color: Colors.white,
              ),
              onTap: () {
                controller.animateToPage(3,
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.easeInOutSine);
                Navigator.pop(context);
              },
            ),
            ListTile(
              hoverColor: Colors.black,
              title: Text('CERTIFICATIONS',
                style: TextStyle(
                    color: Colors.white),
              ),
              leading: Icon(
                Icons.emoji_events,
                color: Colors.white,
              ),
              onTap: () {
                controller.animateToPage(4,
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.easeInOutSine);
                Navigator.pop(context);
              },
            ),
            ListTile(
              hoverColor: Colors.black,
              title: Text('CONTACT ME',
                style: TextStyle(
                    color: Colors.white),
              ),
              leading: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              onTap: () {
                controller.animateToPage(5,
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.easeInOutSine);
                Navigator.pop(context);
              },
            ),
            ListTile(
              hoverColor: Colors.black,
              title: Text('BLOGS',
                style: TextStyle(
                    color: Colors.white),
              ),
              leading: Icon(
                Icons.assignment_outlined,
                color: Colors.white,
              ),
              onTap: () {
                controller.animateToPage(6,
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.easeInOutSine);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text('Manali Mahajan'),
          ],
        ),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        pageSnapping: false,
        controller: controller,
        children: _list,
      ),
    );
  }
}