import 'package:flutter/material.dart';
import 'package:testing/home_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _NameState();
}

class _NameState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context){
              return const HomePage();
            },
            ),
          );
        },
        child: const Text('Profile'),
      ),
    );
  }
}