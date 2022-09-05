import 'package:flutter/material.dart';
import 'package:form1/RegScreen.dart';
import 'package:form1/SignScreen.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 45, 0, 0),
            child: Hero(
              tag: "logo",
              child: Image(image: AssetImage("images/jobs.png"),height: 350,))),

          Text(' Discover your\nDream job Here',
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 30,horizontal: 50),
            child: 
            Text("Explore all the most existing jobs roles\nBased on your interest And study major"
            ,style: TextStyle(fontSize: 15,color: Colors.grey,)
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: SizedBox(
                    height: 45,
                    width: 150,
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>reg()));
                      }, child: Text("Register",style: TextStyle(color: Colors.black,fontSize: 14),),
                      style: TextButton.styleFrom(backgroundColor: Colors.amber,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
                      ),
                      ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  child: SizedBox(
                    height: 45,
                    width: 150,
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>sign()));
                    }, child: Text("Sign In",style: TextStyle(color: Colors.black,fontSize: 14),),
                    style: TextButton.styleFrom(backgroundColor: Colors.amber,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))

                    )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}