import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Simple UI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      backgroundColor: Colors.teal[700],
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/s.PNG'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Muhammad Shehzad',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  color: Colors.teal[900],
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            const Divider(
              color: Colors.white,
              indent: 30,
              endIndent: 30,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 40,
              width: 350,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                  ),
                  Icon(
                    Icons.phone,
                    color: Colors.teal[700],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  Text(
                    '+923169727675',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal[700],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 40,
              width: 350,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                  ),
                  Icon(
                    Icons.email,
                    color: Colors.teal[700],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  Text(
                    'Shezikhan2014@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal[700],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
