import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Tugas Pertemuan 4',),
      ),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Container(
             width: 270,
              height: 80,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text(
                "BOX 1",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
          ),
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                 width: 90,
                  height: 160,
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: const Text(
                    "Box 2",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
              ),

              const SizedBox(width: 10),

              Container(
                  width: 90,
                    height: 160,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: const Text(
                      "Box 3",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
              )
            ],
          )
        ],
        ),
      ),
    );
    
  }
}



