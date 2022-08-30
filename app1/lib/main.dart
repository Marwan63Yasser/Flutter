import 'package:flutter/material.dart';

void main() 
{
  runApp
  (
    MaterialApp
    (
    home: Scaffold
    (
      
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        leading: Icon(Icons.arrow_back),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.favorite_border),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.menu)
            ),
        ],
      ),
      body: Column(
        
        children: [
          Center(
            child :CircleAvatar(
              backgroundImage: AssetImage("images/mmm.jpg") ,
              radius: 100,
          ),
          ),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(45,10,30,0),
            child: Text("Marwan Yasser",style: TextStyle(fontSize: 27,color: Colors.white,fontWeight: FontWeight.bold),),
            ),

          Padding(
            padding: const EdgeInsets.fromLTRB(45,0,30,5),
            child: Text("Software Developer",style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.bold),),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(45,0,30,0),
            child: Text("Create Great Projects",style: TextStyle(fontSize: 15,color: Colors.white),),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(45,0,30,0),
            child: Text("@maryasabd",style: TextStyle(fontSize: 15,color: Colors.white),),
          ),

          Row(
            children: [

              Padding(
                padding: EdgeInsets.fromLTRB(152,10,30,0),
                child: Icon(Icons.facebook,size: 35,),),

              Padding(
                padding: EdgeInsets.fromLTRB(2,10,30,0),
                child: Icon(Icons.label_important_outline_rounded,size: 35,),),


              Padding(
                padding: EdgeInsets.fromLTRB(2,10,30,0),
                child: Icon(Icons.add_moderator_outlined,size: 35,),),

            ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(55,10,30,0),
          child: ElevatedButton(onPressed: null, child: Text("Hire Me!"),
          ),
        ),

        Row(
          children: [
            Column(
              children: [
                Padding(
                padding: EdgeInsets.fromLTRB(110,80,30,0),
                child: Icon(Icons.ac_unit_rounded,size: 70,),),

                Padding(
            padding: const EdgeInsets.fromLTRB(110,0,30,0),
            child: Text("2.8k",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
            ),

            Padding(
            padding: const EdgeInsets.fromLTRB(110,0,30,0),
            child: Text("Followers",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold),),
            ),

              ],
            ),
              

            Column(
              children: [
                Padding(
                padding: EdgeInsets.fromLTRB(70,80,30,0),
                child: Icon(Icons.account_tree_outlined,size: 70,),),

                Padding(
            padding: const EdgeInsets.fromLTRB(70,0,30,0),
            child: Text("2.8k",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
            ),

            Padding(
            padding: const EdgeInsets.fromLTRB(70,0,30,0),
            child: Text("Followers",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold),),
            ),
              ],
            )  
          ],
        )

        ],

      ),
    backgroundColor: Colors.grey[800],
    ),
    )
  );
}

