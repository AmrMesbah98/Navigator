import 'package:flutter/material.dart';

class Try extends StatelessWidget {
  const Try({super.key});

  @override
  Widget build(BuildContext context) {
    final Route = ModalRoute.of(context)!.settings.arguments as Map<String,String>;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('try page'),
        ),
        body: Center(child: Text(Route['argumment'] as String),),
      ),
    );
  }
}
