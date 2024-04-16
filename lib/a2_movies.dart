import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:technovasion/a1.dart';

import 'movies.dart';


class a2_movies extends StatelessWidget {
  const a2_movies({Key? key});

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
              MaterialPageRoute(builder: (context) => movies()),
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
              child: Text("A2 level", style: TextStyle(fontSize: 35),),
            ),
          ),
          create("Despicable Me",'An animated comedy featuring a supervillain named Gru who adopts three orphaned girls as part of his plan to steal the moon.', 'assets/me.jpg'),
          create("The Incredibles",'An animated superhero film about a family of superheroes who must come out of retirement to save the world.', 'assets/incredibles.jpg'),
          create("Kung Fu Panda",'An animated martial arts comedy following a clumsy panda named Po who dreams of becoming a kung fu master', 'assets/nemo.jpeg'),
          create("The Jungle Book",'The mischievous Cat in the Hat turns a rainy day into an adventure for two children.', 'assets/panda.jpg'),
          create("Ratatouille",'An animated film about a rat named Remy who dreams of becoming a chef and forms an unlikely partnership with a young kitchen worker.', 'assets/rat.jpg'),
          create("WALL-E",'An animated science fiction film about a robot named WALL-E who embarks on a space journey that ultimately determines the fate of humanity.', 'assets/wall.jpg'),



        ],
      ),
    );
  }
}
