import 'package:flutter/material.dart';

class Favouritepage extends StatefulWidget {
  const Favouritepage({super.key});

  @override
  State<Favouritepage> createState() => _FavouritepageState();
}

class _FavouritepageState extends State<Favouritepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
      ),
    );
  }
}
