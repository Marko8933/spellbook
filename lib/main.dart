import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(SpellBook());
}

class SpellBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
