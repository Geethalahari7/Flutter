import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row, Column, Stack Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout Widgets Demo'),
          backgroundColor: Colors.blueAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Row Layout',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                rowExample(),
                SizedBox(height: 20),
                Text(
                  'Column Layout',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),                 ),
                columnExample(),
                SizedBox(height: 20),
                Text(
                  'Stack Layout',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                stackExample(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Row Layout Example
  Widget rowExample() {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.lightBlue[50],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          coloredBox('A', Colors.red),
          coloredBox('B', Colors.green),
          coloredBox('C', Colors.blue),
        ],
      ),
    );
  }

  // Column Layout Example
  Widget columnExample() {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.lightGreen[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          coloredBox('1', Colors.purple),
          coloredBox('2', Colors.orange),
          coloredBox('3', Colors.brown),
        ],
      ),
    );
  }

  // Stack Layout Example
  Widget stackExample() {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.amber[50],
      child: Stack(
        children: [
          Positioned(
            left: 30,
            top: 30,
            child: coloredBox('Bottom', Colors.grey),
          ),
          Positioned(
            left: 60,
            top: 60,
            child: coloredBox('Middle', Colors.blue),
          ),
          Positioned(
            left: 90,
            top: 90,
            child: coloredBox('Top', Colors.red),
          ),
        ],
      ),
    );
  }

  // Colored Box Widget (Fixed)
  Widget coloredBox(String label, Color color) {
    return Container(
      width: 70,
      height: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
