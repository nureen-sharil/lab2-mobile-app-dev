import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
          colors: [Color.fromARGB(255, 15, 58, 94), Color.fromARGB(255, 134, 34, 42)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ), 
      ),
      child: Center( //Wraps the column to center the content
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          children: [
            const Text("Placeholder Image",
            style: TextStyle(fontSize: 70, color: Color.fromARGB(255, 225, 235, 89))
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Press Me", 
              style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 225, 235, 89))),
            ),
          ],
        )
      )
    )
  )
  )
  );
}
