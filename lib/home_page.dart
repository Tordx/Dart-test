import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          Image.asset('images/default.PNG'),
          const SizedBox(
            height: 20,
          ),
          const Divider(color: Colors.black),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.black,
            width: double.infinity,
            child: const Center(
              child: Text(
                'FOR EASE ACCESS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          TextButton.icon(
              onPressed: () {
                debugPrint('Hello there');
              },
              icon: const Icon(
                Icons.download,
                size: 25,
              ),
              label: const Text('download'),
                
              
          ),
        ],
      ),
    );
  }
}
