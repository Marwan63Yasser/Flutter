
import 'package:flutter/material.dart';

void main() 
{
  runApp
  (
    MaterialApp
    (
    home: Scaffold
    (
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
        backgroundColor: Colors.yellow,
        leading: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,),
        bottom: const Tab(child: Text("Account Settings",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),),
        ),
        ),
    body: Column(
          children: [
            const Center(
              child:  
              Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 5),
                child:CircleAvatar(
                backgroundImage: AssetImage('images/kkk.jpg'),
                radius: 60,
              ),
              )
            ),
            const Text("Marwan Yasser",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),

            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                child: Text("Edit Profile",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
              ),
            ),

            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(22, 0, 0, 5),
                child: Text("Phone Number",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
            ),
            

            Row(
              children: [

            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                child: Text("+201158185178",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),),
              ),
            ),


             const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.fromLTRB(285, 0, 20, 0),
                child: Icon(Icons.edit,color: Colors.grey,),
                ),
            ),

              ],
            ),

            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(22, 25, 0, 5),
                child: Text("Email",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
            ),
            

            Row(
              children: [

            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                child: Text("maryasabd@gmail.com",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),),
              ),
            ),


             const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.fromLTRB(250, 0, 20, 0),
                child: Icon(Icons.edit,color: Colors.grey,),
                ),
            ),

              ],
            ),


            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(22, 25, 0, 5),
                child: Text("Password",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
            ),
            

            Row(
              children: [

            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                child: Text("*********",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),),
              ),
            ),


             const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.fromLTRB(325, 0, 20, 0),
                child: Icon(Icons.edit,color: Colors.grey,),
                ),
            ),

              ],
            ),


            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 5),
                child: Text("Logout",style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold,fontSize: 17),),
              ),
            )
      ],
    ),
    ),
    )
  );
}
