import 'package:flutter/material.dart';

import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  final SplashController controller;
  const SplashPage({super.key, required this.controller});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    widget.controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
            child: Text('Loading'),
          )
        ],
      ),
    );
  }
}
