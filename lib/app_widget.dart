import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /* return MaterialApp(
      title: 'School',
      home: Scaffold(
        body: Container(
        padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(child: Text('L'),),
                const Text('Texto1'),
                const Text('Texto2'),
                const Text('Texto3'),
                const Divider(),
                const Row(
                  children: [
                    Icon(Icons.add, color: Colors.green),
                    Spacer(),
                    Icon(Icons.access_alarm, color: Colors.yellow),
                  ],
                ),
                Switch(value: true, onChanged: (val) {}),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('Leandro'),
                  ),
                ),
              ]),
        ),
      ),
    ); */

    return MaterialApp(
        title: 'school',
        home: Scaffold(
          body: Container(
            padding: const EdgeInsets.all(20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Card(
                margin: const EdgeInsets.all(0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(children: [
                    const CircleAvatar(
                      child: Text('L'),
                    ),
                    const SizedBox(width: 8),
                    const Text('Leandro Santos', style: TextStyle(fontWeight: FontWeight.bold),),
                    const Spacer(),
                    IconButton(
                    icon: const Icon(Icons.more_vert), onPressed: () {},
                    ),
                  ]),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Minhas estatísticas',
              ),
            ]),
          ),
        ));
  }
}
