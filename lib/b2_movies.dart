import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:technovasion/a1.dart';
import 'package:technovasion/movies.dart';


class b2_movies extends StatelessWidget {
  const b2_movies({Key? key});

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
              child: Text("B2 level", style: TextStyle(fontSize: 35),),
            ),
          ),
          create("The Lord of the Rings: The Fellowship of the Ring", 'Follows Frodo Baggins and companions on a quest to destroy the One Ring.', 'assets/lord.jpg'),
          create("The Shawshank Redemption", 'A banker wrongfully convicted of murder forms a bond with fellow inmate in prison.', 'assets/redemption.jpg'),
          create("Forrest Gump", 'Follows the life of Forrest Gump, who influences significant events in American history.', 'assets/forrest.jpg'),
          create("The Matrix", 'A programmer discovers the world he lives in is a simulated reality.', 'assets/matrix.jpg'),
          create("Inception", 'A thief enters dreams to steal secrets but must plant an idea for his freedom.', 'assets/inception.jpg')





        ],
      ),
    );
  }
}
