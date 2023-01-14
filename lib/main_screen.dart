import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState( () {
                  counter++;
                });
              },
            child: CircleAvatar(
              radius: 150,
              backgroundColor: Colors.blue,
              child: Text(
              '$counter',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 100,
            fontWeight: FontWeight.normal,
          ), // TextStyle
              ), // Text
            ), // CircleAvatar

            ),
             Align(
              alignment: Alignment.centerLeft, 
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      counter = 0;
                    });
                  },
                  child: const CircleAvatar(
                    radius: 50,
                  backgroundColor: Colors.blue,
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ), // TextStyle
                  ), // Text
                  ),
                   ),
      ),  
       ), 
          ],
        ),
      ),
    );
  }
}
