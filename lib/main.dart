import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Widgets de base",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Atelier 2'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),

        
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'Bienvenue dans cet atelier Flutter!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 20),
              Image.network(
                'https://images.unsplash.com/photo-1519389950473-47ba0277781c',
                width: 220,
              ),
              const SizedBox(height: 20),
              const Text(
                'Créez des interfaces modernes et dynamiques avec Flutter.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),

              
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("Tu as cliqué sur Commencer.");
                    },
                    child: const Text('Commencer'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      print("Tu as cliqué sur En savoir plus.");
                    },
                    child: const Text('En savoir plus'),
                  ),
                ],
              ),

              
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  print("Tu as cliqué sur le TextButton !");
                },
                child: const Text(
                  'Essayer TextButton',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
