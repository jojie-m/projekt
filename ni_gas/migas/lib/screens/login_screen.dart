import 'package:flutter/material.dart';
import '../components/my_textfield.dart';
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var onPressed;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 187, 187, 187),
      body: SafeArea(child:
       Center(child: Column(
       children: [ SizedBox(height: 40,),
       
       //OUR LOGO comes here 
       const Icon(Icons.lock, size: 90,
       ),
       //welcome text 
       Text("Welcome back you've been missed !:)",
       style: TextStyle(
        color:Colors.black26,
        fontSize: 16,
       ),
       ),
       //here is where and how we space widgets with sizedbox
       const SizedBox(height: 20), 
       //creating a text field

      MyTextField(),

      const SizedBox(height:10),

      MyTextField(),

      
      const SizedBox(height:10),

      //button
      ElevatedButton(onPressed: onPressed, 
      child:
      Text("login")),

       ], 
      ),
      ),
      )
      );
    
  }
}