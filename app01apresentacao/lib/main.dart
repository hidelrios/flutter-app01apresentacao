import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Apresentação'),
          backgroundColor: Colors.amber,
        ),
        drawer: Drawer(
          backgroundColor: Colors.amber,
          child: Column(
            children: [Text('Menu 1'), Text('Menu 2')],
          ),
        ),
        body: Column(
          children: [
            Text('Hello World!'),
            Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdGIriHwMYbjKJI76jDDK8KzXXSZhiNKGs9g&s'),
            const SizedBox(height: 60),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.person), Text('O Bruxo')],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.work), Text('Mago do Futebol')],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.badge), Text('Hogwarts ')],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.cake), Text('∞')],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu 1'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu 2')
          ],
        ),
      ),
    );
  }
}
