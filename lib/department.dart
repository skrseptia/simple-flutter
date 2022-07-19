import 'package:flutter/material.dart';

class DepartmentScreen extends StatelessWidget {
  static const routeName = '/DepartmentScreen';

  const DepartmentScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Department')),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(50),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 247, 242, 242),
            child: Column(
              children: [
                SizedBox(
                    height: 80,
                    child: Image.asset(
                      './assets/img/umum.png',
                    )),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Dokter Umum",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 247, 242, 242),
            child: Column(
              children: [
                SizedBox(
                    height: 80,
                    child: Image.asset(
                      './assets/img/gigi.png',
                    )),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Spesialis Gigi",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 247, 242, 242),
            child: Column(
              children: [
                SizedBox(
                    height: 80,
                    child: Image.asset(
                      './assets/img/kulit.png',
                    )),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Spesialis Kulit",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 247, 242, 242),
            child: Column(
              children: [
                SizedBox(
                    height: 80,
                    child: Image.asset(
                      './assets/img/anak.png',
                    )),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Spesialis Anak",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 247, 242, 242),
            child: Column(
              children: [
                SizedBox(
                    height: 80,
                    child: Image.asset(
                      './assets/img/bedah.png',
                    )),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Dokter Bedah",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 247, 242, 242),
            child: Column(
              children: [
                SizedBox(
                    height: 80,
                    child: Image.asset(
                      './assets/img/mata.png',
                    )),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Spesialis Mata",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
