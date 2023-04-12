import 'package:curso_flutter/components/task.dart';
import 'package:flutter/material.dart';

class InitScreen extends StatefulWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
              "Aprender Flutter",
              'assets/images/logo_toddy.jpg',
              1,
            ),
            Task(
              "Aprender Flutter",
              'assets/images/logo_toddy.jpg',
              2,
            ),
            Task(
              "Aprender Flutter",
              'assets/images/logo_toddy.jpg',
              3,
            ),
            Task(
              "Aprender Flutter",
              'assets/images/logo_toddy.jpg',
              4,
            ),
            Task(
              "Aprender Flutter",
              'assets/images/logo_toddy.jpg',
              5,
            ),
            Task(
              "Aprender Flutter",
              'assets/images/logo_toddy.jpg',
              3,
            ),
            Task(
              "Aprender Flutter",
              'assets/images/logo_toddy.jpg',
              2,
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
