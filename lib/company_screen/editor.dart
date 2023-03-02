import 'dart:ui';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Editor extends StatelessWidget {
  const Editor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(100)),
                ),
              
              child: Column(
            
                   children: [
              
              Padding(
                
                padding: const EdgeInsets.only(
                    left: 1, bottom: 10, top: 70, right: 60),
                child: Text(
                  'Video Editor',
                  style: TextStyle(
                      color: Color.fromRGBO(235, 238, 249, 1), fontSize: 30),
                ),
               
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90),
                child: Text('posted 25 days ago',
                    style: TextStyle(
                        color: Color.fromRGBO(235, 238, 249, 1), fontSize: 15)),
              ),
              
          
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
              iconSize: 50,
            ),
          )
        ],
           
        backgroundColor: const Color.fromRGBO(116, 136, 190, 1),
        toolbarHeight: 180,
        
      ),
      body: SafeArea(
        child: Container(
          color: Color.fromRGBO(235, 238, 249, 1),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 40),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage(
                        'imgs/images (1).jpg',
                      ),
                      radius: 30,
                    ),
                  ),
                  Column(
                       children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 1, bottom: 10, top: 50, right: 100),
                  child: Text(
                    'Apple',
                    style: TextStyle(
                        color: Color.fromRGBO(12, 13, 14, 1), fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10,top: 1, right: 60),
                  child: Text('maadi,Cairo,Egypt',
                      style: TextStyle(
                          color: Color.fromRGBO(17, 17, 19, 1), fontSize: 15)),
                ),
              ],
                  ),
              
                ],
              ),
              Expanded(
                child: Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left:80,top:30),
                    child: Column(
                      textBaseline: TextBaseline.ideographic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                   
                       Text('Internship Details',style: TextStyle(color: Color.fromRGBO(116, 136, 190, 1), fontSize: 20), ),
                       Text('career level',style: TextStyle(color: Color.fromRGBO(116, 136, 190, 1), fontSize: 10),),
                       Text('salary:paid',style: TextStyle(color: Color.fromRGBO(116, 136, 190, 1), fontSize: 10),),
                       Text('job category',style: TextStyle(color: Color.fromRGBO(116, 136, 190, 1), fontSize: 10),),
                      
                       Padding(
                         padding: const EdgeInsets.only(top: 30),
                         child: Text('internship desc',style: TextStyle(color: Color.fromRGBO(116, 136, 190, 1), fontSize: 20),),
                       ),
                       Text('internet will work on a live demo ',style: TextStyle(color: Color.fromRGBO(116, 136, 190, 1), fontSize: 10),),
                    
                       Padding(
                      padding: const EdgeInsets.only(top: 30),
                         child: Text('Application Deadline',style: TextStyle(color:Color.fromRGBO(116, 136, 190, 1), fontSize: 20),),
                       ),
                       Text('jan 1st 2023',style: TextStyle(color: Color.fromRGBO(116, 136, 190, 1), fontSize: 10),),
                     
                      ],
                    ),
                    
                  ),
              
              
                ],),
              )
            ]
          ),
          
          ),
      ),
      /////////////////////////////////
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
