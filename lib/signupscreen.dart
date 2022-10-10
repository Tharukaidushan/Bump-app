
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'loginscreen.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({Key? key}) : super(key: key);

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {

  final _formkey = GlobalKey<FormState>();
  final TextEditingController fistNameController = new TextEditingController();
  final TextEditingController lastNameController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController reTypePasswordController = new TextEditingController();


  final signupBtn = Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.all(5),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50),
        textStyle: const TextStyle(fontFamily: 'Montserrat', fontSize: 20, fontWeight: FontWeight.w400),
        primary: Colors.white,
        onPrimary: const Color.fromARGB(255, 83, 0, 218),
      ),
      child: const Text("CREATE AN ACCOUNT"),
      onPressed: () => Fluttertoast.showToast(msg: 'Pressed Signup Button', fontSize: 10),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 83, 0, 218),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            const Text('CREATE A BUMP ACCOUNT', style: TextStyle(fontFamily: 'Montserrat', fontSize: 30, fontWeight: FontWeight.w300, color: Colors.white),),
            const SizedBox(height: 40),
            Container(
              decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 1.0, color: Color(0xFFFFFFFF),),),),
              child: Column(
                children: [
                  TextField(controller: fistNameController, keyboardType: TextInputType.text,
                    decoration: const InputDecoration(border: InputBorder.none, hintText: 'First Name', hintStyle: TextStyle(fontSize: 18.0, color: Color.fromARGB(150, 255, 255, 255)),), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),)
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
                  TextField(controller: lastNameController, keyboardType: TextInputType.text, decoration: const InputDecoration(border: InputBorder.none, hintText: 'Last Name',
                    hintStyle: TextStyle(fontSize: 18.0, color: Color.fromARGB(150, 255, 255, 255)),),
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),)
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
                  TextField(controller: emailController, keyboardType: TextInputType.emailAddress, decoration: const InputDecoration(border: InputBorder.none,
                    hintText: 'Email',
                    hintStyle: TextStyle(fontSize: 18.0, color: Color.fromARGB(150, 255, 255, 255)),),
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),)
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

            const SizedBox(height: 10),
            Container(
              decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 1.0, color: Color(0xFFFFFFFF),
              ),
              ),
              ),
              child: Column(
                children: [
                  TextField(controller: reTypePasswordController, obscureText: true, decoration: const InputDecoration(border: InputBorder.none,
                    hintText: 'Re-type password',
                    hintStyle: TextStyle(fontSize: 18.0, color: Color.fromARGB(150, 255, 255, 255)),),
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),)
                ],
              ),
            ),

            const SizedBox(height: 25),
            signupBtn,
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("I already have an Bump account ", style: TextStyle(color: Colors.white),),
                GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                  child: const Text("Login", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.white, decoration: TextDecoration.underline),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}