import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../screens/login_screen.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text("Migas", style: TextStyle(fontWeight:FontWeight.bold, fontSize: 28.0, ),),
           SizedBox(height: 20),
          Lottie.network('https://assets6.lottiefiles.com/packages/lf20_snmohqxj/lottie_step2/data.json',),
          SizedBox(height: 10),
          Padding(padding: EdgeInsets.all(16.0), child: Text("Ran out of gas while cooking? Worry no more! Press the button to order a refil asap! ", style: TextStyle(fontSize: 18.0,),),
          ),
           SizedBox(height: 40),
        ElevatedButton(onPressed: (){
          //func is written here
           Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );

        }

        // ignore: sort_child_properties_last
        , child: Text("Get started ", style: TextStyle(fontSize: 24.0,),),
        style: ButtonStyle(
          //to change button bg color
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 3, 158, 111)),
          // to change its shape
             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
          //to change button size
          fixedSize: MaterialStatePropertyAll<Size>(Size(340.0, 50.0)),
          
        ),
       ),
       SizedBox(height: 19,),
       Text("developed by meetjojie", style: TextStyle(fontSize: 14.0,),),
          
       ]

      ),
      
      
    );
  }
}