import 'package:flutter/material.dart';

class BottomHome extends StatelessWidget {
  final String title;
  final Widget tipo;

  const BottomHome({super.key, required this.title, required this.tipo});

  @override
  Widget build(BuildContext context) {
    dynamic dinamicWidth = MediaQuery.of(context).size.width;
    dynamic dinamicHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => tipo,
            ));
      },
      splashColor: Colors.amber,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
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
            width: dinamicWidth * 0.8,
            height: dinamicHeight * 0.20,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Icon(
                    Icons.ads_click,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
