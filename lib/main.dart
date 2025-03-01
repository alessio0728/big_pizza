import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //NAVBAR

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page prova android'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //PARTE CENTRALE
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Applica lo stile al testo "Cia proviamo le prime modifiche"
            Text(
              'Ci proviamo le prime modifiche',
              style: TextStyle(
                fontSize: 20, // Aumenta la dimensione del font
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 255, 255, 1), // Colore ciano
                backgroundColor: Color.fromRGBO(
                  255,
                  0,
                  255,
                  1,
                ), // Colore di sfondo fucsia
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 30, // Aumenta la dimensione del font per il contatore
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 255, 255, 1),
              ),
            ),
            Text(
              'proviamo a inserire qualcosa',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                backgroundColor: Color.fromRGBO(0, 250, 154, 0.5),
                color: Color.fromRGBO(0, 0, 128, 1),
              ),
              textAlign: TextAlign.center,
            ),
            Padding(padding: const EdgeInsets.only(top:20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                20,
              ), // Rende i bordi arrotondati
              child: Image.network(
                'https://img.pikbest.com/illustration/20240503/spirited-mothers-day-holiday-wishes-222024-png-images-png_10545926.jpg!w700wp',
                width: 150, // Imposta larghezza
                height: 150, // Imposta altezza
                fit: BoxFit.cover, // Adatta l'immagine al contenitore
              ),
            ),
            ),
          ],
        ),
      ),

      //FOOTER
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
