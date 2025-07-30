import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:latihan1_11pplg2/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String statuslogin = "Login Status";
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        
          children: [
            Text("Welcome to our app", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.deepPurpleAccent,
            ),),
            Text("Please fill username and password below"),
            
            Center(
              child: Image.asset(
                'assets/icon/icon.jpg'
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: TextField(
                controller: txtUsername,
                decoration: InputDecoration(
                  labelText: "Masukkan Username",
                  border: OutlineInputBorder(),
              ),),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                controller: txtPassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Masukkan password",
                  border: OutlineInputBorder(),
              ),),
            ),
            SizedBox(
              width: double.infinity,
              child :ElevatedButton(onPressed: (){
                if(txtPassword.text == "admin" && txtUsername.text == "admin"){
                  setState(() {
                    statuslogin = "Login berhasil";
                  });
                } else {
                  setState(() {
                    statuslogin = "Login gagal";
                  });
                }
                log("status $statuslogin");
              }, 
              child: Text("Login",))
            ),  
            Text(statuslogin),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage())
                );
                }, child: Text("Register", 
                style: TextStyle(
                  color: Colors.blue,
                ),
               )
              ),
            )
          ],
        ),
      ),
    );
  }
}