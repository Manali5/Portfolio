import 'package:portfolio/widgets/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      elevation: 0,
      title: ResponsiveWidget.isLaptop(context) ?
      Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Text('Manali Mahajan',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Spacer(),
          HoverButton(
            hoverShape: RoundedRectangleBorder(),
            onpressed: () {},
            hoverColor: Colors.black,
            child: Text('HOME',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white),
            ),
          ),
          Spacer(),
          HoverButton(
            hoverShape: RoundedRectangleBorder(),
            onpressed: () {},
            hoverColor: Colors.black,
            child: Text('ABOUT',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white),
            ),
          ),
          Spacer(),
          HoverButton(
            hoverShape: RoundedRectangleBorder(),
            onpressed: () {},
            hoverColor: Colors.black,
            child: Text('PROJECTS',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white),
            ),
          ),
          Spacer(),
          HoverButton(
            hoverShape: RoundedRectangleBorder(),
            onpressed: () {},
            hoverColor: Colors.black,
            child: Text('SKILLS',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white),
            ),
          ),
          Spacer(),
          HoverButton(
            hoverShape: RoundedRectangleBorder(),
            onpressed: () {},
            hoverColor: Colors.black,
            child: Text('CERTIFICATIONS',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white),
            ),
          ),
          Spacer(),
          HoverButton(
            hoverShape: RoundedRectangleBorder(),
            onpressed: () {},
            hoverColor: Colors.black,
            child: Text('CONTACT ME',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white),
            ),
          ),
          Spacer(),
        ],
      )
          :
      Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Text('Manali Mahajan'),
        ],
      ),
      backgroundColor: Colors.black,
    );