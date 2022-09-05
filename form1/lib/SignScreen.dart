import 'package:flutter/material.dart';
import 'package:form1/RegScreen.dart';

class sign extends StatefulWidget {
  const sign({super.key});

  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,foregroundColor: Colors.amber,elevation: 0,),
      backgroundColor: Colors.white,
      body: Column(
        
        children: [

          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Center(
              child: Text('Hello Again!',
                style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
                ),
            ),
          ),

          Center(
              child: Text('Wellcome back you have',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
            ),

            Center(
              child: Text('been missed!',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(20,60,20,20),
              child: TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Enter username",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),
                onSaved: (newValue) {
                 
                },
              validator: (value) {
                if(value == "")
                {
                  return "please enter name";
                }
                else
                {return null;}
              },
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(20,0,20,40),
              child: TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),
                onSaved: (newValue) {
                 
                },
              validator: (value) {
                if(value == "")
                {
                  return "please enter name";
                }
                else
                {return null;}
              },
              ),
            ),

            Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  child: SizedBox(
                    height: 55,
                    width: 320,
                    child: TextButton(
                      onPressed: (){
                        
                      }, child: Text("Sign In",style: TextStyle(color: Colors.black,fontSize: 16),),
                      style: TextButton.styleFrom(backgroundColor: Colors.amber,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                      ),
                      ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(30),
                  child: Text('Or Continue with',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                  child: InkWell(
                    child: SizedBox(
                      height: 45,
                      width: 70,
                      child: TextButton(
                        onPressed: (){
                          
                        }, child: Icon(Icons.android_outlined),
                        style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),side: BorderSide(color: Colors.grey))
                        ),
                        ),
                    ),
                    onTap: (){},
                  ),
                ),

                Container(
                        margin: EdgeInsets.symmetric(horizontal: 35),
                  child: InkWell(
                    child: SizedBox(
                      height: 45,
                      width: 70,
                      child: TextButton(
                        onPressed: (){
                          
                        }, child: Icon(Icons.apple),
                        style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),side: BorderSide(color: Colors.grey))
                        ),
                        ),
                    ),
                    onTap: (){},
                  ),
                ),

                Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                  child: InkWell(
                    child: SizedBox(
                      height: 45,
                      width: 70,
                      child: TextButton(
                        onPressed: (){
                          
                        }, child: Icon(Icons.facebook),
                        style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),side: BorderSide(color: Colors.grey))
                        ),
                        ),
                    ),
                    onTap: (){},
                  ),
                ),
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Not a member? '),
                        InkWell(
                          child: Text('Register Now',style: TextStyle(color: Colors.blue),),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>reg()));
                          },
                        ),
                      ],
                    ),
                  )
        ],
      ),
    );
  }
}