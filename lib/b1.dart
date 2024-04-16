import 'package:flutter/material.dart';
import 'package:technovasion/a1.dart';
import 'package:technovasion/books.dart';
import 'a1_movies.dart';


class b1 extends StatelessWidget {
  const b1({Key? key});

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
        title: const Text('B1'),
        leading: IconButton(
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Books()),
            );
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Colors.purple[200],
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
                "B1 level",
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
          create("Harry Potter and the Sorcerer's Stone",
              'The story of Harry Potter, a young wizard, as he attends Hogwarts School of Witchcraft and Wizardry.',
              'assets/sorcerers stone.jpg'),
          create("To Kill a Mockingbird",
              'Set in the American South during the 1930s, the novel explores themes of racial injustice and moral growth through the eyes of young Scout Finch and her father, lawyer Atticus Finch.',
              'assets/mocking bird.jpg'),
          create("The Giver",
              'In a dystopian society where emotions and memories are suppressed, Jonas is chosen to be the Receiver of Memory and learns the truth about his communitys past.',
              'assets/giver.jpg'),
          create("The Hunger Games",
              ' In a post-apocalyptic world, Katniss Everdeen volunteers to participate in the Hunger Games, a televised fight to the death among teenagers.',
              'assets/games.jpg'),
          create("Animal Farm",
              'A political allegory that tells the story of farm animals who rebel against their owner, to create a society ruled by pigs that mirrors the corruption of power in human societies.',
              'assets/farm.jpg'),
        ],
      ),
    );
  }
}
