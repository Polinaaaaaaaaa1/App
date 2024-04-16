import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'a1.dart';
import 'home_page.dart';


class tests extends StatelessWidget {
  const tests({Key? key});

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
          create("EFSET",'EFSET offers a free online test that provides a standardized assessment of English proficiency. Link: https://www.efset.org/', 'assets/efset.jpg'),
          create("Test-Englisch",'Grammar lessons with exercises and clear explanations, grammar charts, reading and listening tests with transcriptions. Link:https://test-english.com/', 'assets/test-englisch.jpg'),
          create("Duolingo Englisch Test",'Duolingo offers an English proficiency online test (reading, writing, listening, and speaking)', 'assets/duolingo1.png'),



        ],
      ),
    );
  }
}
