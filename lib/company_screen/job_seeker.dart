import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';

class JobSeeker extends StatefulWidget {
  const JobSeeker({super.key});

  @override
  State<JobSeeker> createState() => _JobSeekerState();
}

class _JobSeekerState extends State<JobSeeker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Container(
            color: const Color.fromRGBO(235, 238, 249, 1),
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 350, left: 120),
                      child: Text(
                        "Pearl Store",
                        style: TextStyle(
                          color: Color.fromRGBO(116, 136, 190, 1),
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 120),
                      child: Text(
                        "pearlstore@gmail.com",
                        style: TextStyle(
                          color: Color.fromRGBO(116, 136, 190, 1),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 60,
                          top: 450,
                          bottom: 0,
                        ),
                        child: Column(
                            textBaseline: TextBaseline.ideographic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 7),
                                child: Text(
                                  'Address',
                                  style: TextStyle(
                                      color: Color.fromRGBO(116, 136, 190, 1),
                                      fontSize: 20),
                                ),
                              ),
                              Text(
                                'maadi,cairo,Egypt',
                                style: TextStyle(
                                    color: Color.fromRGBO(116, 136, 190, 1),
                                    fontSize: 10),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 60, top: 30, bottom: 7),
                                child: Text(
                                  'intereted jobs',
                                  style: TextStyle(
                                      color: Color.fromRGBO(116, 136, 190, 1),
                                      fontSize: 20),
                                ),
                              ),
                              Text(
                                'video editor-photographer',
                                style: TextStyle(
                                    color: Color.fromRGBO(116, 136, 190, 1),
                                    fontSize: 10),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 20, top: 650, left: 270),
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(151, 168, 216, 1),
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child: Center(
                            child: Text(
                          'Reject',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 20),
                        )),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, top: 650, left: 10),
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(116, 136, 190, 1),
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: Center(
                        child: Text(
                      'Accept',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, top: 650, left: 135),
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(151, 168, 216, 1),
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: Center(
                        child: Text(
                      'Wait',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                  ),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(116, 136, 190, 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)),
                  ),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Icon(
                      Icons.notifications,
                      size: 40,
                      color: Colors.white,
                    ),
                  ]),
                ),
                Positioned(
                  top: 100,
                  left: 80,
                  child: CircleAvatar(
                    radius: 121,
                    backgroundColor: Color.fromRGBO(116, 136, 190, 1),
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage('imgs/images (1).jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      ///////////////////////////////////////////////
      bottomNavigationBar: Container(
        color: Color.fromRGBO(116, 136, 190, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          child: GNav(
              textSize: 40,
              iconSize: 29,
              activeColor: Color.fromRGBO(0, 0, 0, 1),
              color: Color.fromRGBO(235, 238, 249, 1),
              backgroundColor: Color.fromRGBO(116, 136, 190, 1),
              tabBackgroundColor: Color.fromARGB(111, 246, 238, 247),
              gap: 8,
              padding: EdgeInsets.all(16),
              tabs: const [
                GButton(
                  icon: Icons.border_all_outlined,
                  text: 'All Posts',
                ),
                GButton(icon: Icons.copy_all_sharp, text: 'your post'),
                GButton(icon: Icons.add, text: 'add post'),
                GButton(icon: Icons.history, text: 'history'),
              ]),
        ),
      ),
    );
  }
}
