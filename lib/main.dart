import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
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
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String img;
  final int diculdade;

  const Task(this.nome, this.img, this.diculdade, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
            ),
            Column(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.black26,
                        ),
                        width: 72,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.network(
                            widget.img,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 200,
                              child: Text(
                                widget.nome,
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                                overflow: TextOverflow.ellipsis,
                              )),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: widget.diculdade >= 1
                                    ? Colors.blue
                                    : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: widget.diculdade >= 2
                                    ? Colors.blue
                                    : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: widget.diculdade >= 3
                                    ? Colors.blue
                                    : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: widget.diculdade >= 4
                                    ? Colors.blue
                                    : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: widget.diculdade >= 5
                                    ? Colors.blue
                                    : Colors.blue[100],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 52,
                        width: 52,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Icon(Icons.arrow_drop_up),
                                Text(
                                  'Up',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        child: LinearProgressIndicator(
                          backgroundColor: Colors.white,
                          color: Colors.purple,
                          value: (widget.diculdade > 0)
                              ? (nivel / widget.diculdade) / 10
                              : 1,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Nivel $nivel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
