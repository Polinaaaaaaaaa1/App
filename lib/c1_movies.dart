import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:technovasion/a1.dart';
import 'package:technovasion/movies.dart';


class c1_movies extends StatelessWidget {
  const c1_movies({Key? key});

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
              child: Text("C1 level", style: TextStyle(fontSize: 35),),
            ),
          ),
          create("Time", 'In a future where people stop aging at 25, but are engineered to live only one more year, having the means to buy your way out of the situation is a shot at immortal youth. ', 'assets/time.jpg'),
          create("RED", 'Former black-ops agent Frank Moses reunites his team to survive and uncover his assailants when his peaceful life is threatened by a high-tech assassin.', 'assets/red2.jpg'),
          create("10 Cloverfield Lane", 'A young woman is held in an underground bunker by a man who claims the Earths surface is uninhabitable after a hostile event.', 'assets/cloverfield.jpg'),
          create("The Adjustment Bureau", 'The affair between a politician and a contemporary dancer is hindered by mysterious forces.', 'assets/bureau.jpg'),
          create("Vicky Cristina Barcelona", 'Two friends on a summer holiday in Spain become enamored with the same painter, unaware of his tumultuous relationship with his ex-wife.', 'assets/viky.jpg')







        ],
      ),
    );
  }
}
