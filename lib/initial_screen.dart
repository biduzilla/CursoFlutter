import 'package:curso_flutter/task.dart';
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
        opacity: opacidade ? 1 : 0.5,
        duration: Duration(milliseconds: 800),
        child: ListView(
          children: [
            Task(
              "Aprender Flutter",
              'https://cdn.shopify.com/s/files/1/0252/6632/3507/products/Ha7e1bd5ab6154a1ca1db317a26a8c59de_1200x1200.jpg?v=1651695053',
              1,
            ),
            Task(
              "Aprender Flutter",
              'https://cdn.shopify.com/s/files/1/0252/6632/3507/products/Ha7e1bd5ab6154a1ca1db317a26a8c59de_1200x1200.jpg?v=1651695053',
              2,
            ),
            Task(
              "Aprender Flutter",
              'https://cdn.shopify.com/s/files/1/0252/6632/3507/products/Ha7e1bd5ab6154a1ca1db317a26a8c59de_1200x1200.jpg?v=1651695053',
              3,
            ),
            Task(
              "Aprender Flutter",
              'https://cdn.shopify.com/s/files/1/0252/6632/3507/products/Ha7e1bd5ab6154a1ca1db317a26a8c59de_1200x1200.jpg?v=1651695053',
              4,
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
        child: Icon(Icons.remove_red_eye),
      ),
    );
  }
}
