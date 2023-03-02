import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_graduation_project/company_screen/company_profile.dart';
import 'package:flutter_graduation_project/company_screen/editor.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: const Color.fromRGBO(235, 238, 249, 1),
            height: 1000,
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 240, left: 250),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Editor()));
                        },
                        child: Row(
                          children: const [
                            Icon(
                              Icons.edit_note_outlined,
                              size: 30,
                              color: Color.fromRGBO(116, 136, 190, 1),
                            ),
                            Text(
                              "Edit Logo",
                              style: TextStyle(
                                color: Color.fromRGBO(116, 136, 190, 1),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(116, 136, 190, 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)),
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 10, top: 70, right: 170),
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                            color: Color.fromRGBO(235, 238, 249, 1),
                            fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 70),
                      child: Icon(
                        Icons.notifications,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ]),
                ),
                Positioned(
                  top: 100,
                  left: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 170, top: 50),
                    child: CircleAvatar(
                      radius: 41,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Color.fromRGBO(116, 136, 190, 1),
                        child: CircleAvatar(
                          radius: 120,
                          backgroundImage: AssetImage('imgs/images (1).jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 300, left: 20, right: 20),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 209, 209, 209),
                            borderRadius: BorderRadius.circular(30)),
                        height: 50,
                        child: Row(
                          children: const [
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              'Pearl Store',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 124, 124, 124),
                              ),
                            ),
                            Spacer(
                              flex: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 370, left: 20, right: 20),
                  child: Column(
                    children: [
                       Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 209, 209, 209),
                            borderRadius: BorderRadius.circular(30)),
                        height: 50,
                        child: Row(
                          children: const [
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              '*********',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 124, 124, 124),
                              ),
                            ),
                            Spacer(
                              flex: 5,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height:15,),
                      Padding(
                        padding:  EdgeInsets.only(top:70,bottom: 0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'country',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              ),
                            ),
                        ),
                      ),
                        const SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.only(top:0 ),
                        child: TextFormField(
                          
                            decoration: const InputDecoration(
                            labelText: 'city',
                            
                            border: OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(50)),),
                            ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.only(top:0 ),
                        child: TextFormField(
                          
                            decoration: const InputDecoration(
                            labelText: 'Residential area',
                            
                            border: OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(50)),),
                            ),
                        ),
                      ),
                     
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 440, left: 20, right: 20),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 209, 209, 209),
                            borderRadius: BorderRadius.circular(30)),
                        height: 50,
                        child: Row(
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              'Pearl Store',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 124, 124, 124),
                              ),
                            ),
                            Spacer(
                              flex: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
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
