import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        alignment: Alignment.center,
        child: Column(
          children: const [
            SizedBox(height: 80,),
            Text("Login",style: TextStyle(fontSize: 45.0, color: Colors.black54, fontWeight: FontWeight.bold),),
          ],
        ),
      )
    );
  }
}
