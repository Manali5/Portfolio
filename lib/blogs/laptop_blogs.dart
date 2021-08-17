import 'package:flutter/material.dart';

class LaptopBlogs extends StatefulWidget {
  const LaptopBlogs({Key? key}) : super(key: key);

  @override
  _LaptopBlogsState createState() => _LaptopBlogsState();
}

class _LaptopBlogsState extends State<LaptopBlogs> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text('Blogs',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[900],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text('This is my first blog',
                          style: TextStyle(
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Text('$count',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  count = count + 1;
                                }
                                );
                              },
                              child: Icon(
                                Icons.arrow_upward_outlined,
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.cyan,
                              ),
                            ),
                          ]
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            InkWell(
              mouseCursor: SystemMouseCursors.click,
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                Navigator.pushNamed(context, '/desklogin');
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purpleAccent,
                ),
                child: Center(
                  child: Text('Add a Blog',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
