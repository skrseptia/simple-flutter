import 'package:flutter/material.dart';
import 'package:uasflutter_ikhsanguntara_20218230004/tabs_screen.dart';

import 'home.dart';

// ignore: must_be_immutable
class AuthScreen extends StatelessWidget {
  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  // ignore: prefer_typing_uninitialized_variables
  var nUsername, nPassword;
  //tambahkan form
  final _formKey = GlobalKey<FormState>();
  static const routeName = '/auth';

  AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 6, 20, 111)),
          ),
          SingleChildScrollView(
            child: SizedBox(
              height: deviceSize.height,
              width: deviceSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Image.asset(
                          './assets/img/logo.png',
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 450,
                    child: Flexible(
                      flex: deviceSize.height > 500 ? 2 : 1,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: SafeArea(
                          child: Card(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Masukkan E-mail anda!';
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          hintText: 'Email',
                                        ),
                                      ),
                                      TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Masukkan umur anda!';
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          hintText: 'Umur',
                                        ),
                                      ),
                                      TextFormField(
                                        //cek data field nya kosong
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Masukkan Ikhsan sebagai username!';
                                          }
                                          return null;
                                        },
                                        controller: myUsernameController,
                                        decoration: const InputDecoration(
                                          hintText: ' Username',
                                        ),
                                      ),
                                      TextFormField(
                                        //cek data field nya kosong
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Masukkan password!';
                                          }
                                          return null;
                                        },
                                        maxLength: 16,
                                        controller: myPasswordController,
                                        obscureText: true,
                                        decoration: const InputDecoration(
                                          hintText: ' Password',
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 25.0,
                                      ),
                                      MaterialButton(
                                        minWidth: 85.0,
                                        height: 40.0,
                                        color: Colors.green,
                                        textColor: Colors.white,
                                        onPressed: () {
                                          //cek apakah username = Ikhsan
                                          //cek password < 5 : gak bisa login, >5 bisa login
                                          //ngambil value dari widget textfield
                                          nUsername = myUsernameController.text;
                                          nPassword = myPasswordController.text;
                                          if (_formKey.currentState!
                                              .validate()) {
                                            if (nUsername != 'Ikhsan') {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(const SnackBar(
                                                      content: Text(
                                                          "Username Salah, Ikhsan")));
                                            } else if (nPassword.length <= 5) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(const SnackBar(
                                                      content: Text(
                                                          "Password Salah, harus lebih dari 5")));
                                            } else {
                                              //aksi pindah
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const TabsScreen()
                                                    // PageHome(
                                                    //   nama: nUsername,
                                                    //   password:
                                                    //       nPassword, // variable yang di pass ke page home
                                                    // ),
                                                    ),
                                              );
                                            }
                                          }
                                        },
                                        child:
                                            const Center(child: Text('Submit')),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class PageLogin extends StatelessWidget {
  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  // ignore: prefer_typing_uninitialized_variables
  var nUsername, nPassword;
  //tambahkan form
  final _formKey = GlobalKey<FormState>();

  PageLogin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  //cek data field nya kosong
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                  controller: myUsernameController,
                  decoration: const InputDecoration(
                    hintText: 'Input Username',
                  ),
                ),
                TextFormField(
                  //cek data field nya kosong
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Input Username';
                    }
                    return null;
                  },
                  maxLength: 16,
                  controller: myPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Input Password',
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                MaterialButton(
                  minWidth: 85.0,
                  height: 50.0,
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: () {
                    //cek apakah username = Ikhsan
                    //cek password < 5 : gak bisa login, >5 bisa login
                    //ngambil value dari widget textfield
                    nUsername = myUsernameController.text;
                    nPassword = myPasswordController.text;
                    if (_formKey.currentState!.validate()) {
                      if (nUsername != 'Ikhsan') {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text(
                                "Username Salah, harus di isi dengan Ikhsan")));
                      } else if (nPassword.length <= 5) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    "Password Salah, harus lebih dari 5")));
                      } else {
                        //aksi pindah
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen(
                                      nama: nUsername,
                                      password:
                                          nPassword, // variable yang di pass ke page home
                                    )));
                      }
                    }
                  },
                  child: const Center(
                    child: Text('Submit'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
