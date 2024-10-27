import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final priceController = TextEditingController();
  final descriptionController = TextEditingController();
  CreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Create'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Name'
                ),
              ),
              TextField(
                controller: priceController,
                decoration: const InputDecoration(
                  hintText: 'Price'
                ),
              ),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  hintText: 'Description'
                ),
              ),
              ElevatedButton(onPressed: (){}, child: const Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
