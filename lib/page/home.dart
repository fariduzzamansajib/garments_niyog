import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('Garments Niyog'),
    ),
    body: Column(children: [Center(child: Text('Welcome to Home Page'),),],),);
  }
}