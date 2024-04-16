import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:technovasion/a1.dart';
import 'package:technovasion/movies.dart';


class a1_movies extends StatelessWidget {
  const a1_movies({Key? key});

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
              child: Text("A1 level", style: TextStyle(fontSize: 35),),
            ),
          ),
          create("Up",'A rhythmic book introducing animals and colors.', 'assets/up.jpg'),
          create("Casper",'Follows a caterpillars journey through various foods to becoming a butterfly, teaching counting and days of the week.', 'assets/casper.png'),
          create("Finding Nemo",'A bedtime story of a bunny saying goodnight to everything in its room.', 'assets/nemo.jpeg'),
          create("The Jungle Book",'The mischievous Cat in the Hat turns a rainy day into an adventure for two children.', 'assets/jungle.jpeg'),
          create("Toy Story",'The first installment of the beloved animated series about the secret life of toys when humans arent around', 'assets/toy.jpg'),




        ],
      ),
    );
  }
}
