import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'UserManager.dart';
import 'my_textfield.dart';
import 'post.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final textController = TextEditingController();

  void postMessage() {
    String? userEmail = UserManager().userEmail;
    if (textController.text.isNotEmpty && userEmail != null) {
      FirebaseFirestore.instance.collection("user_posts").add({
        'UserEmail': userEmail,
        'Message': textController.text,
        'created_at': FieldValue.serverTimestamp(),
      }).then((value) {
        print("Message sent successfully");
        setState(() {
          textController.clear();
        });
      }).catchError((error) {
        print("Failed to send message: $error");
      });
    } else {
      print("User email is not set or message is empty");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: const Text("Chat"),
        backgroundColor: Colors.deepPurple[200],
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("user_posts")
                    .orderBy("created_at", descending: true)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        final post = snapshot.data!.docs[index];
                        return Post(
                          message: post["Message"],
                          user: post["UserEmail"],
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return const Center(
                      child: Text('Error'),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Expanded(
                    child: MyTextField(
                      controller: textController,
                      hintText: "Write something",
                      obscureText: false,
                    ),
                  ),
                  IconButton(
                    onPressed: postMessage,
                    icon: const Icon(Icons.arrow_circle_up),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
