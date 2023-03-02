import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_graduation_project/company_screen/edit_post.dart';
import 'package:flutter_graduation_project/company_screen/job_seeker.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'editor.dart';

class ActivePost extends StatelessWidget {
  const ActivePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Container(
            color: const Color.fromRGBO(235, 238, 249, 1),
            height:1000,
            child: Stack(
              children: [
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(116, 136, 190, 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end, 
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          Padding(          
                       // ignore: unnecessary_const
                       padding: const EdgeInsets.only(
                        left: 1, bottom: 10, top: 70, right: 160),
                       child: Text(
                        'Video Editor',
                        style: TextStyle(
                            color: Color.fromRGBO(235, 238, 249, 1), fontSize: 30),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 160),
                                    child: Text('posted 25 days ago',
                          style: TextStyle(
                              color: Color.fromRGBO(235, 238, 249, 1), fontSize: 15)),
                                  ), 
                                  ],
                      ),
                    ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 70),
                          child: Icon(
                            Icons.notifications,
                            size: 40,
                            color: Colors.white,
                          ),
                        ), 
                  ]
                  
                  ),
              
                ),
              
              Padding(
                  padding: const EdgeInsets.only(top:590 ,left: 25,right: 25),
                  child: Container(
                    height: 120,
                    width: 400,
                   
                    decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            border:Border.all(width: 1,color: Color.fromRGBO(116, 136, 190, 1) ),
                     ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(

                              padding: const EdgeInsets.only(left: 70,top:15),
                              child: Column(
                                 textBaseline: TextBaseline.ideographic,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 15),
                                    child: Text('Mohanad Darwish ',style: TextStyle(fontSize: 20),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text('Graphic Designer ',style: TextStyle(fontSize: 15,color: Color.fromRGBO(116, 136, 190, 1)),),
                                  ),
                               
                                  Text('3 Days ',style: TextStyle(fontSize: 10,color: Colors.green),),

                                ],
                                
                              ),
                   
                               
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                   Padding(
                padding: const EdgeInsets.only(top:680,left: 230),
                child: InkWell(
                    onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => JobSeeker()));
                        },
                  child: Container(
                    height: 40,
                    width: 125,
                    
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(116, 136, 190, 1) ,
                      borderRadius: BorderRadius.circular(30),
                    
                    ),
                    child: Center(child: Text('view detail',style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                ),
              ),
Padding(
                    padding: const EdgeInsets.only(left: 30, top: 620),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage(
                        'imgs/images (1).jpg',
                      ),
                      radius: 30,
                    ),
                  ),
              
             Padding(
                  padding: const EdgeInsets.only(top:730 ,left: 25,right: 25),
                  child: Container(
                    height: 120,
                    width: 400,
                   
                    decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            border:Border.all(width: 1,color: Color.fromRGBO(116, 136, 190, 1) ),
                     ),
                     
                    child: Row(
                      
                      children: [
                        
                        Column(
                          
                          children: [
                            Padding(
                              
                              padding: const EdgeInsets.only(left: 70,top:15),
                              child: Column(
                              textBaseline: TextBaseline.ideographic,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 15),
                                    child: Text('Mohanad Darwish ',style: TextStyle(fontSize: 20),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text('Graphic Designer',style: TextStyle(fontSize: 15,color: Color.fromRGBO(116, 136, 190, 1)),),
                                  ),
                                
                                  Text('3 Days',style: TextStyle(fontSize: 10,color: Colors.green),),

                                ],
                                
                                
                              ),  
                            ),
                          ],
                           
              
                
                  
                        ),
                       
                      ],
                      
                    ),
                    
                    
                  ),
                ),
                        Padding(
                padding: const EdgeInsets.only(top:830,left: 230),
                child: InkWell(
                    onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => JobSeeker()));
                        },
                  child: Container(
                    height: 40,
                    width: 125,       
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(116, 136, 190, 1) ,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(child: Text('view detail',style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                ),
              ),
                Padding(
                    padding: const EdgeInsets.only(left: 30, top: 760),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage(
                        'imgs/images (1).jpg',
                      ),
                      radius: 30,
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.only(top:250,left: 270),
                child: InkWell(
                    onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditPost()));
                        },
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(116, 136, 190, 1) ,
                      borderRadius: BorderRadius.circular(30),
                    
                    ),
                    child: Center(child: Text('Repost',style: TextStyle(color: Colors.white,fontSize: 18),)),
                  ),
                ),
              ),
            
                Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 230),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage(
                        'imgs/images (1).jpg',
                      ),
                      radius: 30,
                    ),
                  ),
                   Column(
                       children: const [
                Padding(
                  padding: EdgeInsets.only(
                      left: 1, bottom: 10, top: 230, right: 100),
                  child: Text(
                    'Apple',
                    style: TextStyle(
                        color: Color.fromRGBO(12, 13, 14, 1), fontSize: 20),
                  ),
                ),
                
                Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 10,top: 1, right: 60),
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
                      children: const [
                   
                       Text('Internship Details',style: TextStyle(color: Color.fromRGBO(116, 136, 190, 1), fontSize: 20), ),
                       Text('career level',style: TextStyle(color: Color.fromRGBO(116, 136, 190, 1), fontSize: 10),),
                       Text('salary:paid',style: TextStyle(color: Color.fromRGBO(116, 136, 190, 1), fontSize: 10),),
                       Text('job category',style: TextStyle(color: Color.fromRGBO(116, 136, 190, 1), fontSize: 10),),
                      
                       Padding(
                         padding: EdgeInsets.only(top: 30),
                         child: Text('internship desc',style: TextStyle(color: Color.fromRGBO(116, 136, 190, 1), fontSize: 20),),
                       ),
                       Text('internet will work on a live demo ',style: TextStyle(color: Color.fromRGBO(116, 136, 190, 1), fontSize: 10),),
                    
                       Padding(
                      padding: EdgeInsets.only(top: 30),
                         child: Text('Application Deadline',style: TextStyle(color:Color.fromRGBO(116, 136, 190, 1), fontSize: 20),),
                       ),
                       Text('jan 1st 2023',style: TextStyle(color: Color.fromRGBO(116, 136, 190, 1), fontSize: 10),),
                      Padding(
                      padding: EdgeInsets.only(top: 30),
                         child: Text('Job Seekers',style: TextStyle(color:Color.fromRGBO(116, 136, 190, 1), fontSize: 20),),
                       ),
                      ],
                    ),
                    
                  ),
              
              
                ],),
                
              ),
            
                 
            ],
          ),
              ],
           ),
      ),
        ),
      ),
           ///////////////////////////////////////////////
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(116, 136, 190, 1),
      
        child: const Padding(
          
          padding: EdgeInsets.symmetric(
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
              tabs: [
                
                GButton(
                  icon: Icons.border_all_outlined,
                  text: 'All Posts',
                
                ),
                GButton(icon: Icons.copy_all_sharp, text: 'your post'),
                
                GButton(icon: Icons.add, text: 'add post',active:true,),
                GButton(icon: Icons.history, text: 'history'),
              ]),
        ),
      ),
     
    );
  }
}