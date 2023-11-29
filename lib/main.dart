import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Phrases'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () async {
                      await player.play(AssetSource('01.mp3'));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Colors.greenAccent, Colors.deepPurple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.all(8),
                      child: const Center(
                        child: Text('Salut'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await player.play(AssetSource('assets/03.mp3'));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Colors.greenAccent, Colors.deepPurple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.all(8),
                      child: const Center(
                        child: Text('Ma numesc'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await player.play(AssetSource('05.mp3'));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Colors.greenAccent, Colors.deepPurple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.all(8),
                      child: const Center(
                        child: Text('Cum esti?'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await player.play(AssetSource('07.mp3'));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Colors.greenAccent, Colors.deepPurple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.all(8),
                      child: const Center(
                        child: Text('Sunt bine'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Second Row of Containers
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () async {
                      await player.play(AssetSource('02.mp3'));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Colors.greenAccent, Colors.deepPurple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.all(8),
                      child: const Center(
                        child: Text('Salut(germana)'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await player.play(AssetSource('04.mp3'));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Colors.greenAccent, Colors.deepPurple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.all(8),
                      child: const Center(
                        child: Text('Ma numesc(germana)'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await player.play(AssetSource('06.mp3'));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Colors.greenAccent, Colors.deepPurple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.all(8),
                      child: const Center(
                        child: Text('Cum esti?(germana)'),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await player.play(AssetSource('08.mp3'));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Colors.greenAccent, Colors.deepPurple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.all(8),
                      child: const Center(
                        child: Text('Sunt bine(germana)'),
                      ),
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
