import 'package:flutter/material.dart';

import 'a1.dart';
import 'a2.dart';
import 'b1.dart';
import 'b2.dart';
import 'c1.dart';
import 'home_page.dart'; // Импортируйте другие страницы, если они есть
// Импортируйте остальные необходимые страницы


class Books extends StatelessWidget {
  const Books({Key? key});

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
        title: const Text('Levels'),
        leading: IconButton(
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Colors.deepPurple[200],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const a1()),
                );

              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple[50]),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(Size(double.infinity, 60)),
              ),
              child: const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  "A1",
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const a2()),
                );

              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple[50]),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(Size(double.infinity, 60)),
              ),
              child: const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  "A2",
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const b1()),
                );

              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple[50]),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(Size(double.infinity, 60)),
              ),
              child: const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  "B1",
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const b2()),
                );

              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple[50]),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(Size(double.infinity, 60)),
              ),
              child: const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  "B2",
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const c1()),
                );

              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple[50]),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(Size(double.infinity, 60)),
              ),
              child: const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  "C1",
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
