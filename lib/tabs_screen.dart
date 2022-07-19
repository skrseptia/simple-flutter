import 'package:flutter/material.dart';
import 'gallery.dart';
import 'department.dart';
import 'doctor.dart';
import 'home.dart';
import 'visimisi.dart';
import 'settings.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/home';

  const TabsScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages = [];

  int _selectedPageIndex = 0;
  @override
  void initState() {
    _pages = [
      {
        'page': const HomeScreen(
          nama: 'Ikhsan',
          password: '',
        ),
        'title': "HomeScreen",
      },
      {
        'page': const VisiMisi(),
        'title': "Visi Misi",
      },
      {
        'page': const DoctorProfilScreen(),
        'title': "Doctor Profil",
      },
      {
        'page': const DepartmentScreen(),
        'title': "Departement",
      },
      {
        'page': const GalleryScreen(),
        'title': "Gallery",
      },
      {
        'page': const SettingsScreen(),
        'title': "Settings",
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: const Color.fromARGB(255, 100, 97, 97),
        selectedItemColor: Colors.black,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.article_rounded),
            label: 'Visi Misi',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.people),
            label: 'Doctor',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.apps_sharp),
            label: 'Department',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.photo_album_outlined),
            label: 'Galeri',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
