import 'package:flutter/material.dart';

class VisiMisi extends StatelessWidget {
  static const routeName = '/VisiMisi';

  const VisiMisi({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Visi Misi')),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Padding(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                child: Text(
                  "Visi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                child: Text(
                  "Menjadi Rumah Sakit Yang Berkualitas Dengan Mengedepankan Pelayanan, Pendidikan dan Penelitian Menuju Rumah Sakit Berkelas;",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                child: Text(
                  "Misi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                child: Text(
                  "1. Menyelenggarakan pelayanan kesehatan bermutu sesuai dengan standar akreditasi nasional dan internasional yang berorientasi pada keselamatan dan kepuasan pelanggan",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                child: Text(
                  "2. Menyelenggarakan pelayanan kesehatan rujukan dengan jejaring yang luas",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                child: Text(
                  "3. Menyediakan sarana dan prasarana sesuai dengan perkembangan ilmu pengetahuan dan teknologi kesehatan",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                child: Text(
                  "4. Menyelenggarakan pendidikan, penelitian dan pengembangan yang berkesinambungan untuk menghasilkan sumber daya manusia yang kompeten, berintegrasi dan memiliki budaya kerja",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                child: Text(
                  "5. Meningkatkan kinerja layanan, profesionalisme dan meningkatkan kesejahteraan pegawai.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
