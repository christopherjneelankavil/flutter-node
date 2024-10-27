import 'package:flutter/material.dart';

import 'create_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter - node'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return CreateScreen();
              }));
            }, child: const Text('CREATE')),
            ElevatedButton(onPressed: (){}, child: const Text('READ')),
            ElevatedButton(onPressed: (){}, child: const Text('UPDATE')),
            ElevatedButton(onPressed: (){}, child: const Text('DELETE')),
          ],
        ),
      ),
    );
  }
}
