import 'package:flutter/material.dart';
import 'package:technovasion/a1.dart';
import 'package:technovasion/books.dart';
import 'a1_movies.dart'; // Если функция create находится в файле a1_movies.dart

class a2 extends StatelessWidget {
  const a2({Key? key});

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
        title: const Text('A2'),
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
                "A2 level",
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
          create("Charlotte's Web",
              'The story of a friendship between a pig named Wilbur and a spider named Charlotte, who works to save Wilbur from being slaughtered.',
              'assets/charlotte.jpg'),
          create("Matilda",
              'Follows the story of Matilda, a young girl with telekinetic powers, as she navigates her difficult home life and stands up to the oppressive adults in her life.',
              'assets/matilda.jpg'),
          create("The Magic Tree House",
              ' Siblings Jack and Annie discover a magical treehouse that takes them on adventures to different times and places throughout history.',
              'assets/tree house.jpg'),
          create("Charlie and the Chocolate Factory",
              'Charlie wins a golden ticket to Willy Wonkas chocolate factory, where he experiences extraordinary events.',
              'assets/chocolate.jpg'),
          create("Diary of a Wimpy Kid",
              'Follows the humorous and relatable diary entries of middle schooler Greg Heffley as he navigates the ups and downs of adolescence.',
              'assets/diary.jpg'),
        ],
      ),
    );
  }
}
