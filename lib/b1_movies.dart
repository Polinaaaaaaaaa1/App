import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:technovasion/a1.dart';
import 'package:technovasion/movies.dart';

class b1_movies extends StatelessWidget {
  const b1_movies({Key? key});

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
        title: const Text('Movies'),
        leading: IconButton(
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>const  movies()),
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new),
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
              child: const Text("B1 level", style: TextStyle(fontSize: 35),),
            ),
          ),
          create("Harry Potter and the Sorcerer's Stone", "A film following the adventures of a young wizard as he attends Hogwarts.", "assets/hp.jpg"),
          create("The Princess Bride", "A fantasy adventure film about a young woman and her true love as they embark on a quest to rescue her from an arranged marriage.", "assets/princess.jpg"),
          create("The Curse of the Black Pearl", "A film following Captain Jack Sparrow as he searches for a cursed treasure while battling undead pirates.", "assets/pirates.png"),
          create("Back to the Future", "A science fiction comedy about a teenager who travels back in time and must ensure his parents fall in love to preserve his existence.", "assets/back.jpg"),
          create("Jurassic Park", "A science fiction adventure film about a theme park filled with genetically engineered dinosaurs that go on a rampage.", "assets/park.jpg")



        ],
      ),
    );
  }
}
