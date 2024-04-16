import 'package:flutter/material.dart';
import 'package:technovasion/a1.dart';
import 'package:technovasion/books.dart';
import 'a1_movies.dart'; // Подключите файл с функцией create, если он не подключен

class b2 extends StatelessWidget {
  const b2({Key? key});

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
        title: const Text('B2'),
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
                "B2 level",
                style: TextStyle(fontSize: 35),
              ),
            ),
          ),
          create("The Catcher in the Rye",
              'Follows the story of Holden Caulfield, a disenchanted teenager, as he navigates the complexities of adolescence and searches for authenticity in a superficial world.',
              'assets/catcher.jpg'),
          create("1984",
              ' Set in a dystopian future where totalitarianism reigns, the novel follows Winston Smith as he rebels against the oppressive regime of Big Brother and seeks truth and freedom.',
              'assets/1984.jpg'),
          create("The Great Gatsby",
              ' Set in the 1920s, the novel explores themes of love, wealth, and the American Dream through the eyes of narrator Nick Carraway and the enigmatic Jay Gatsby.',
              'assets/gatsby.jpg'),
          create("Lord of the Flies",
              'After a group of boys becomes stranded on a deserted island, they attempt to govern themselves, but their society descends into chaos and savagery.',
              'assets/flies.jpg'),
          create("Pride and Prejudice",
              'A classic romantic comedy that follows the romantic entanglements of the Bennet sisters in Regency-era England.',
              'assets/pride.jpg'),
        ],
      ),
    );
  }
}
