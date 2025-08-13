import 'package:flutter/material.dart';
import 'package:latihan1_11pplg2/widgets/custom_button.dart';
import 'package:latihan1_11pplg2/widgets/custom_text.dart';

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
            CustomText(myText: "Welcome to our app", myStyle : const TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ) ),
            CustomText(myText: "Login Page", myStyle: TextStyle()),
            
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
            
            CustomButton(
              myText: "Login", 
              myColor: Colors.blue, 
              onPressed: () {
                if(txtPassword.text == "admin" && txtUsername.text == "admin"){
                  setState(() {
                    statuslogin = "Login berhasil";
                  });
                } else {
                  setState(() {
                    statuslogin = "Login gagal";
                  });
                }
              }, 
              ),
            
            CustomButton(
              myText: "Register", 
              myColor: Colors.red, 
              onPressed: () {

              } ),
            Text(statuslogin),
          ],
        ),
      ),
    );
  }
}