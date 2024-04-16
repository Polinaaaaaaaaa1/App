import 'package:flutter/material.dart';
import 'package:technovasion/a1.dart';
import 'package:technovasion/books.dart';
import 'a1_movies.dart'; // Если функция create находится в файле a1_movies.dart

class c1 extends StatelessWidget {
  const c1({Key? key});

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
        title: const Text('C1'),
        leading: IconButton(
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Books()),
            );
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Colors.deepPurple[200],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              alignment: Alignment.center,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple[300],
              ),
              child: Text(
                "C1 level",
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
          create("Brave New World",
              'Set in a dystopian future the novel explores themes of individuality, freedom, and the consequences of scientific advancement.',
              'assets/world.jpg'),
          create("One Hundred Years of Solitude",
              'The multi-generational saga of the Buendía family in the fictional town of Macondo.',
              'assets/one.jpg'),
          create("Crime and Punishment",
              'Follows the story of Rodion Raskolnikov, a destitute student who commits a murder and grapples with guilt, redemption.',
              'assets/crime.jpg'),
          create("The Picture of Dorian Gray",
              'Tells the story of Dorian Gray, a young man who remains youthful while a portrait of him ages, exploring themes of vanity, morality, and the pursuit of beauty.',
              'assets/dorian.jpg'),
          create("Moby-Dick",
              'A sprawling epic that follows the obsessed Captain Ahab as he seeks revenge on the white whale Moby Dick.',
              'assets/moby.jpg'),
        ],
      ),
    );
  }
}
