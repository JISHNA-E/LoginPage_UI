import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("HOME"),
      backgroundColor: Colors.blue,
      ),
      body:
       Center(
         child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(height: 400,
              "https://images.unsplash.com/photo-1719216324034-2910e4347532?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
            ,Text("jishna"
          ,style: TextStyle(fontSize: 40),),
               Text("naziya",style: TextStyle(fontSize: 40),
              
                

               )],),
       ),
      backgroundColor: Color.fromARGB(255, 224, 234, 241),
    );
  }
}