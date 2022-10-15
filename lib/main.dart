import 'package:flutter/material.dart';
import 'package:tabbar_test/try.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: MyHomePage(),
      routes: {
        '/': (context) => MyHomePage(),
        'x1': (context) => const Try(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  selectpage(BuildContext ctx, int x) {
    Navigator.of(ctx).pushNamed((x == 0) ? '/' : 'x1', arguments: {
      'title': 'name of amr',
      'argumment': 'no information',
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('main'),
      ),
      body: Center(
        child: InkWell(
          onTap: ()=>selectpage(context, 1),
          child: const Text('Go to try page',style: TextStyle(fontSize: 28),),
        ),
      ),
    );
  }
}
