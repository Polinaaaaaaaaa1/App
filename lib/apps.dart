import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:technovasion/a1.dart';
import 'package:technovasion/home_page.dart';


class apps extends StatelessWidget {
  const apps({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        centerTitle: true,
        title: const Text('Tests'),
        leading: IconButton(
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Colors.deepPurple[200],
      ),
      body: ListView(
        children: [
          create("Duolingo",'Duolingo is a widely used language learning app that offers interactive lessons covering reading, writing, listening, and speaking skills. ', 'assets/duolingo1.png'),
          create("Rosetta Stone",'Rosetta Stone provides immersive language learning experiences through its interactive lessons. It focuses on building vocabulary and grammar skills through context and repetition.', 'assets/stone.png'),
          create("Babbel",'Babbel offers courses tailored to your native language, focusing on practical conversations and grammar. ', 'assets/babbel.png'),
          create("HelloTalk",'HelloTalk connects language learners with native speakers around the world for language exchange.', 'assets/talk.jpg'),
          create("Busuu",'Busuu provides interactive language courses with grammar exercises, vocabulary lessons, and speaking practice. ', 'assets/busuu.png'),


        ],
      ),
    );
  }
}
