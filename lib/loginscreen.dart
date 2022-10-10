
import 'package:bump_app/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'homescreen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen ({Key? key}) : super(key: key);

  @override
  State<LoginScreen > createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  // final loginBtn = Container(
  //   alignment: Alignment.center,
  //   padding: const EdgeInsets.all(5),
  //   child: ElevatedButton(
  //     style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50),
  //         textStyle: const TextStyle(fontFamily: 'Montserrat', fontSize: 20, fontWeight: FontWeight.w400),
  //       primary: Colors.white,
  //       onPrimary: const Color.fromARGB(255, 83, 0, 218),
  //     ),
  //     onPressed: () {
  //       Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => homeScreen()));
  //     },
  //     child: const Text("Login"),
  //       // onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => homeScreen()))}
  //   ),
  // );

  @override
  Widget build(BuildContext context) {

    // final emailfield = TextFormField(
    //   autofocus: false,
    //   controller: emailController,
    //
    // );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 83, 0, 218),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            const Text('LOGIN WITH BUMP', style: TextStyle(fontFamily: 'Montserrat', fontSize: 40, fontWeight: FontWeight.w300, color: Colors.white),),
            const SizedBox(height: 40),
            Container(
              decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 1.0, color: Color(0xFFFFFFFF),),),),
              child: Column(
                children: [
                  TextField(controller: emailController, keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(border: InputBorder.none, hintText: 'Username', hintStyle: TextStyle(fontSize: 18.0, color: Color.fromARGB(150, 255, 255, 255)),), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),)
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 1.0, color: Color(0xFFFFFFFF),
              ),
              ),
              ),
              child: Column(
                children: [
                  TextField(controller: passwordController, obscureText: true, decoration: const InputDecoration(border: InputBorder.none, hintText: 'Password',
                    hintStyle: TextStyle(fontSize: 18.0, color: Color.fromARGB(150, 255, 255, 255)),),
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),)
                ],
              ),
            ),

            const SizedBox(height: 25),
            // loginBtn,
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size(88, 36),
                padding: EdgeInsets.symmetric(horizontal: 16),
                backgroundColor: Colors.white,
                onSurface: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => homeScreen()));
              },
              child: const Text('Login', style: TextStyle(fontFamily: 'Montserrat', fontSize: 20, fontWeight: FontWeight.w400),),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Don't have an account? ", style: TextStyle(color: Colors.white),),
                GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => signupScreen()));
                },
                  child: const Text("Sign-up", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.white, decoration: TextDecoration.underline),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
