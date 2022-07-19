import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  static const routeName = '/GalleryScreen';

  const GalleryScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Galeri')),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Image.asset(
              'assets/img/gallery/gallery-1.jpg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Image.asset(
              'assets/img/gallery/gallery-2.jpg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Image.asset(
              'assets/img/gallery/gallery-3.jpg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Image.asset(
              'assets/img/gallery/gallery-4.jpg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Image.asset(
              'assets/img/gallery/gallery-5.jpg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Image.asset(
              'assets/img/gallery/gallery-6.jpg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Image.asset(
              'assets/img/gallery/gallery-7.jpg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Image.asset(
              'assets/img/gallery/gallery-8.jpg',
            ),
          ),
        ],
      )),
    );
  }
}
