import 'package:flutter/material.dart';
import 'package:flutterdemo/homepage.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  var colors = Colors.pink;
  @override
  Widget build(BuildContext context) {
    return  Scaffold
    (backgroundColor:colors,
  
    body: 
     Padding(
       padding: const EdgeInsets.all(20.0),
       child: Column(mainAxisAlignment:MainAxisAlignment.spaceBetween,
        
        children: [
          Image.network(height: 100,width: 100,"https://cdn-icons-png.flaticon.com/512/87/87390.png"),
         IconButton(onPressed: (){
          setState(() {
           if (colors == Colors.pink)
           {
            colors = Colors.orange;
           }
           else{
            colors = Colors.pink;
           }
          });
        
         }, icon: Icon (Icons.ac_unit_rounded )),
         TextField(
  decoration: InputDecoration(
      labelText: 'USERNAME:',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  ),
),
          TextField(
  decoration: InputDecoration(
      labelText: 'PASSWORD',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  ),
),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){}, child: Text("forgot password")),
            ],
          ),
          Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return homepage();
                }));
              }, child: Text("login")),TextButton(onPressed: (){}, child: Text("signup"))
            ],
          ),
          SizedBox(height: 50,)
        ],
           ),
     )
    );
  }
}