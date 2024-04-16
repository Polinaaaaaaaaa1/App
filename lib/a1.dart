import 'package:flutter/material.dart';
import 'package:technovasion/books.dart';

Widget create(String name, String description, String path) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[300],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with padding
          Padding(
            padding: const EdgeInsets.all(17), // Adjust padding as needed
            child: Image.asset(
              path,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10), // Add some space between the image and text
          // Text content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                Text(
                  description,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

class a1 extends StatelessWidget {
  const a1({Key? key});

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
        title: const Text('A1'),
        leading: IconButton(
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Books()),
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Colors.deepPurple[200],
      ),
      body: SingleChildScrollView(
        child: Column(
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
                child: const Text(
                  "A1 level",
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
            create("Brown Bear, Brown Bear, What Do You See?",
                'A rhythmic book introducing animals and colors.',
                'assets/brown bear.jpg'),
            create("The Very Hungry Caterpillar",
                'Follows a caterpillars journey to becoming a butterfly.',
                'assets/caterpillar.jpg'),
            create("Goodnight Moon",
                'A bedtime story of a bunny saying goodnight to everything in its room.',
                'assets/goodnight.jpg'),
            create("The Cat in the Hat",
                'The mischievous Cat in the Hat turns a rainy day into an adventure for two children.',
                'assets/the cat in the hat.jpg'),
            create("Hop on Pop",
                'Dr. Seuss introduces basic phonics and wordplay through short rhymes and illustrations.',
                'assets/hop on pop.jpg'),
          ],
        ),
      ),
    );
  }
}
