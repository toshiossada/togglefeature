import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 0;
  final subModules = [
    {
      'page': '/home/business',
      'child': const BottomNavigationBarItem(
        icon: Icon(Icons.business),
        label: 'Business',
      ),
    },
    {
      'page': '/home/tecnology',
      'child': const BottomNavigationBarItem(
        icon: Icon(Icons.computer),
        label: 'Technology',
      )
    },
    {
      'page': '/home/user',
      'child': const BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'User',
      ),
    }
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const RouterOutlet(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          ...subModules
              .map<BottomNavigationBarItem>(
                  (e) => e['child'] as BottomNavigationBarItem)
              .toList(),
        ],
        currentIndex: index,
        onTap: (int p) {
          Modular.to.navigate(subModules[p]['page'].toString());
          setState(() {
            index = p;
          });
        },
      ),
    );
  }
}
