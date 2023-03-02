import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AddPost extends StatelessWidget {
  const AddPost({super.key});

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Container(
            color: const Color.fromRGBO(235, 238, 249, 1),
            height: 1000,
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
                  child: Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
                    Padding(
                      padding:
                          EdgeInsets.only(bottom: 10, top: 70, right: 170),
                      child: Text(
                        'Add Post',
                        style: TextStyle(
                            color: Color.fromRGBO(235, 238, 249, 1),
                            fontSize: 30),
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
                  ]),
                ),
               
                 const SizedBox(height:15,),
                      Padding(
                        padding:  const EdgeInsets.only(top:230,left: 20,right: 20,bottom: 0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Job Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              ),
                            ),
                        ),
                      ),
                        const SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.only(top:300,left: 20,right: 20,bottom: 0),
                        child: TextFormField(
                          
                            decoration: const InputDecoration(
                            labelText: 'Career level',
                            
                            border: OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(50)),),
                            ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.only(top:370,left: 20,right: 20,bottom: 0),
                        child: TextFormField(
                          
                            decoration: const InputDecoration(
                            labelText: 'Post time per day',
                            
                            border: OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(50)),),
                            ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Padding(
                        
                        padding: const EdgeInsets.only(top:440,left: 20,right: 20,bottom: 0),
                        child: TextFormField(
                          
                            decoration: const InputDecoration(
                            labelText: 'Salary by dollar',
                          
                            
                            border: OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(50)),),
                            ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Padding(
                        
                        padding: const EdgeInsets.only(top:510,left: 20,right: 20,bottom: 0),
                        child: TextFormField(
                          
                            decoration: const InputDecoration(
                            labelText: 'Work',
                            border: OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(50)),),
                            ),
                        ),
                        
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 580,left:20 ),
                        child: Text('Add category',style: TextStyle(fontSize: 25,color:Color.fromRGBO(116, 136, 190, 1) ),),
                      ),
                       const SizedBox(height: 15,),
                      Padding(
                        
                        padding: const EdgeInsets.only(top:630,left: 20,right: 20,bottom: 0),
                        child: TextFormField(
                          
                            decoration: const InputDecoration(
                            labelText: 'Work',
                            suffixIcon: Icon(Icons.add),
                            border: OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(50)),),
                            ),
                        ),
                        
                      ),
                        const SizedBox(height: 15,),
                      Padding(
                        
                        padding: const EdgeInsets.only(top:700,left: 20,right: 20,bottom: 0),
                        child: TextFormField(
                          
                            decoration: const InputDecoration(
                            labelText: 'Work',
                            suffixIcon: Icon(Icons.add),
                            border: OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(50)),),
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
              duration: Duration(microseconds: 500),
              padding: EdgeInsets.all(16),
              tabs: [
                
                GButton(icon: Icons.border_all_outlined, text: 'All Posts',),
                GButton(icon: Icons.copy_all_sharp, text: 'your post'),
                GButton(icon: Icons.add, text: 'add post',active:true,),
                GButton(icon: Icons.history, text: 'history'),
              ]),
        ),
      ),
     
    );
  }
}