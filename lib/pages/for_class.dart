import 'package:flutter/material.dart';

class ForClass extends StatelessWidget {
  const ForClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        centerTitle: true,
        title: const Text(
          'Spell per Classe',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Classe(),
    );
  }
}

class Classe extends StatelessWidget {
  const Classe({super.key});

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
          itemCount: 13,
          itemBuilder: (context, index) => CardClass(index: index),
        ),
      ),
    );
  }
}

class CardClass extends StatelessWidget {
  final int index;
  const CardClass({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    String titleClass = '';

    switch (index) {
      case 0:
        titleClass = 'Artificiere';
        break;
      case 1:
        titleClass = 'Barbaro';
        break;
      case 2:
        titleClass = 'Bardo';
        break;
      case 3:
        titleClass = 'Chierico';
        break;
      case 4:
        titleClass = 'Druido';
        break;
      case 5:
        titleClass = 'Guerriero';
        break;
      case 6:
        titleClass = 'Monaco';
        break;
      case 7:
        titleClass = 'Paladino';
        break;
      case 8:
        titleClass = 'Ranger';
        break;
      case 9:
        titleClass = 'Rogue';
        break;
      case 10:
        titleClass = 'Stregone';
        break;
      case 11:
        titleClass = 'Warlock';
        break;
      case 12:
        titleClass = 'Mago';
        break;
    }

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
          Text(
            titleClass,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 5),
        ],
      )),
    );
  }
}
