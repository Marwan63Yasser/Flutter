import 'package:flutter/material.dart';
import 'package:form1/API.dart';
import 'package:form1/user.dart';

class reg extends StatefulWidget {
  const reg({super.key});

  @override
  State<reg> createState() => _regState();
}

class _regState extends State<reg> {
  student user = student();
  final form = GlobalKey<FormState>();
  API api =  API();
  saveForm() async
  {
    if(form.currentState?.validate() == true)
    {
      form.currentState?.save();
      await api.addUser(user); 
    }

    print(user.FirstName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,foregroundColor: Colors.amber,elevation: 0,),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SafeArea(
          child: Form(
            key: form,
            child: ListView(children: [
            Hero(tag: 'logo', child: Container(
              height: 230,
              child: Image.asset('images/jobs.png'),
            )),

            Container(
              margin: EdgeInsets.symmetric(vertical: 6),
              child: TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "First Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),
                onSaved: (newValue) {
                  user.FirstName = newValue!;
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
              margin: EdgeInsets.symmetric(vertical: 6),
              child: TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Last Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),
                onSaved: (newValue) {
                  user.LastName = newValue!;
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
              margin: EdgeInsets.symmetric(vertical: 6),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Mobile Number",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),
                onSaved: (newValue) {
                  user.Mobile = newValue!;
                },

                validator: (value) {
                if(int.tryParse(value!) == null)
                {
                  return "please enter a valid number";
                }
                else
                {return null;}
              },
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 6),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),
                onSaved: (newValue) {
                  user.Email = newValue!;
                },

                validator: (value) {
                if(value == "")
                {
                  return "please enter a valid email";
                }
                else
                {return null;}
              },
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 6),
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),
                onSaved: (newValue) {
                  user.Password = newValue!;
                },

                validator: (value) {
                if(value == "")
                {
                  return "please enter a valid password";
                }
                else
                {return null;}
              },
              ),
            ),
          
            Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  child: SizedBox(
                    height: 45,
                    width: 150,
                    child: TextButton(
                      onPressed: (){
                        saveForm();
                      }, child: Text("Register",style: TextStyle(color: Colors.black,fontSize: 14),),
                      style: TextButton.styleFrom(backgroundColor: Colors.amber,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
                      ),
                      ),
                  ),
                ),

          ]),
          
          ),
        ),
      ),
    );
  }
}