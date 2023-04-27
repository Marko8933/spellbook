import 'package:flutter/material.dart';
import 'package:spellbook/component/bottom_home.dart';
import 'package:spellbook/pages/for_class.dart';
import 'package:spellbook/pages/for_level.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        centerTitle: true,
        title: const Text(
          'Spell Book 5e',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BottomHome(title: 'Scegli per livello', tipo: ForLevel()),
              BottomHome(title: 'Scegli per classe', tipo: ForClass()),
            ],
          ),
        ),
      ),
    );
  }
}
