import 'package:flutter/material.dart';

class ForLevel extends StatelessWidget {
  const ForLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        centerTitle: true,
        title: const Text(
          'Spell per livello',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Level(),
    );
  }
}

class Level extends StatelessWidget {
  const Level({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.7,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemCount: 10,
          itemBuilder: (context, index) => CardLevel(index: index),
        ),
      ),
    );
  }
}

class CardLevel extends StatelessWidget {
  final int index;
  const CardLevel({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 3,
              blurRadius: 10,
            )
          ]),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Livello',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            '$index ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ],
      )),
    );
  }
}
