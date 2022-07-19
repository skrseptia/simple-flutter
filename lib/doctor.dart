import 'package:flutter/material.dart';

class DoctorProfilScreen extends StatelessWidget {
  const DoctorProfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Dokter')),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class _ArticleDescription extends StatelessWidget {
  const _ArticleDescription({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.telp,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String telp;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(
                subtitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 13.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                telp,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomListItemTwo extends StatelessWidget {
  const CustomListItemTwo({
    Key? key,
    required this.thumbnail,
    required this.title,
    required this.subtitle,
    required this.telp,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String subtitle;
  final String telp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1.0,
              child: thumbnail,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                child: _ArticleDescription(
                  title: title,
                  subtitle: subtitle,
                  telp: telp,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10.0),
      children: const <Widget>[
        CustomListItemTwo(
          thumbnail: Image(
            image: AssetImage('./assets/img/dokter_anak.jpg'),
          ),
          title: 'Prof. DR. dr. Rini Sekartini, Sp.A (K)',
          subtitle: 'Dokter Anak - Ahli Tumbuh Kembang Pediatri Sosial',
          telp: '081285430721',
        ),
        CustomListItemTwo(
          thumbnail: Image(
            image: AssetImage('./assets/img/dokter_kulit.jpg'),
          ),
          title: 'dr. Adi Satriyo, Sp.KK, FINSDV',
          subtitle: 'Dokter Kulit',
          telp: '085285320721',
        ),
        CustomListItemTwo(
          thumbnail: Image(
            image: AssetImage('./assets/img/dokter_gigi.jpg'),
          ),
          title: 'drg. Yanda',
          subtitle: 'Dokter Gigi Umum',
          telp: '081266930721',
        ),
        CustomListItemTwo(
          thumbnail: Image(
            image: AssetImage('./assets/img/dokter_mata.jpg'),
          ),
          title: 'dr. Michael Je, Sp.M',
          subtitle: 'Dokter Mata',
          telp: '087895430721',
        ),
        CustomListItemTwo(
          thumbnail: Image(
            image: AssetImage('./assets/img/dokter_bedah.jpg'),
          ),
          title: 'dr. Tony Sukentro, Sp.B',
          subtitle: 'Dokter Bedah',
          telp: '085505430721',
        ),
        CustomListItemTwo(
          thumbnail: Image(
            image: AssetImage('./assets/img/dokter_umum.jpg'),
          ),
          title: 'dr. Ria Puspita Sari',
          subtitle: 'Dokter Umum',
          telp: '081289930721',
        ),
      ],
    );
  }
}
