import 'package:flutter/material.dart';
import 'package:uasflutter_ikhsanguntara_20218230004/auth_screen.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/SettingsScreen';

  const SettingsScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                content: const Text('Apakah anda yakin untuk keluar?'),
                actions: <Widget>[
                  TextButton(
                    child: const Text('Tidak'),
                    onPressed: () {
                      Navigator.of(ctx).pop(false);
                    },
                  ),
                  TextButton(
                    child: const Text('Ya'),
                    onPressed: () {
                      Navigator.of(ctx).pop(true);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AuthScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
