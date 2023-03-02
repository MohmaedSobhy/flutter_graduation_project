import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_graduation_project/company_screen/editpost_1.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AllPosts extends StatelessWidget {
  const AllPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Container(
            color: const Color.fromRGBO(235, 238, 249, 1),
            height: 1000,
            child: Stack(
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(116, 136, 190, 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)),
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
              
                    Padding(
                      padding: EdgeInsets.only(bottom: 70),
                      child: Padding(
                        padding: EdgeInsets.only(top:20,right: 20),
                        child: Icon(
                          Icons.notifications,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ]),
                  
                ),
                Padding(
                  padding: const EdgeInsets.only(top:200 ,left: 25,right: 25),
                  child: Container(
                    height: 160,
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
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                 textBaseline: TextBaseline.ideographic,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: Text('Senior Angular Developer ',style: TextStyle(fontSize: 20),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text('Evolvice GmbH ',style: TextStyle(fontSize: 15,color: Color.fromRGBO(116, 136, 190, 1)),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Text('Maadi,cairo,Egypt ',style: TextStyle(fontSize: 15,color: Color.fromRGBO(116, 136, 190, 1)),),
                                  ),
                                  Text('3 Days to expire',style: TextStyle(fontSize: 10,color: Colors.green),),

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
                  padding: const EdgeInsets.only(top:380 ,left: 25,right: 25),
                  child: Container(
                    height: 160,
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
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                 textBaseline: TextBaseline.ideographic,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: Text('Senior Angular Developer ',style: TextStyle(fontSize: 20),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text('Evolvice GmbH ',style: TextStyle(fontSize: 15,color: Color.fromRGBO(116, 136, 190, 1)),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Text('Maadi,cairo,Egypt ',style: TextStyle(fontSize: 15,color: Color.fromRGBO(116, 136, 190, 1)),),
                                  ),
                                  Text('3 Days to expire',style: TextStyle(fontSize: 10,color: Colors.green),),

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
                  padding: const EdgeInsets.only(top:560 ,left: 25,right: 25),
                  child: Container(
                    height: 160,
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
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                 textBaseline: TextBaseline.ideographic,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: Text('Senior Angular Developer ',style: TextStyle(fontSize: 20),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text('Evolvice GmbH ',style: TextStyle(fontSize: 15,color: Color.fromRGBO(116, 136, 190, 1)),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Text('Maadi,cairo,Egypt ',style: TextStyle(fontSize: 15,color: Color.fromRGBO(116, 136, 190, 1)),),
                                  ),
                                  Text('3 Days to expire',style: TextStyle(fontSize: 10,color: Colors.green),),

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
                  padding: const EdgeInsets.only(top:740 ,left: 25,right: 25),
                  child: Container(
                    height: 160,
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
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                 textBaseline: TextBaseline.ideographic,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: Text('Senior Angular Developer ',style: TextStyle(fontSize: 20),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text('Evolvice GmbH ',style: TextStyle(fontSize: 15,color: Color.fromRGBO(116, 136, 190, 1)),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Text('Maadi,cairo,Egypt ',style: TextStyle(fontSize: 15,color: Color.fromRGBO(116, 136, 190, 1)),),
                                  ),
                                  Text('3 Days to expire',style: TextStyle(fontSize: 10,color: Colors.green),),

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
                padding: const EdgeInsets.only(top:510,left: 230),
                child: InkWell(
                    onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditPost1()));
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
                padding: const EdgeInsets.only(top:330,left: 230),
                child: InkWell(
                  onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditPost1()));
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
                padding: const EdgeInsets.only(top:870,left: 230),
                child: InkWell(
                  onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditPost1()));
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
                padding: const EdgeInsets.only(top:690,left: 230),
                child: InkWell(
                  onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditPost1()));
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
                  active:true,
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