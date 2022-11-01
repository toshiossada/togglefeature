import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
      ),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: 'Login',
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Login'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Login With FACEBOOK'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Login with Apple'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Login with Google'),
          ),
        ],
      ),
    );
  }
}
