import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_textfield.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}


class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailController = TextEditingController();

  @override

  void dispose(){
    emailController.dispose();
    super.dispose();
  }
  Future passwordReset() async{
    await FirebaseAuth.instance.sendPasswordResetEmail(email: emailController.text.trim());
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text("Link sent!"),
          );
        },);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text("Enter your email and we will send you a password reset link",
            textAlign: TextAlign.center,),
          ),
            MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            SizedBox(height: 10,),
            MaterialButton(
                onPressed: passwordReset,
              child: Text("Reset Password"),
              color: Colors.deepPurple[200],
            )
          ]
      ),
    );
  }
}
