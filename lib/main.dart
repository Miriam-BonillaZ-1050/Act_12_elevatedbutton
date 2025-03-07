import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CustomButtonsScreen(),
    );
  }
}

class CustomButtonsScreen extends StatelessWidget {
  const CustomButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Elevated Button, Miriam Bonilla, 22308051281050"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 157, 210, 226),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTextButton('Button 1', Colors.blue),
            _buildTextButton('Button 2', Colors.red),
            _buildTextButton('Button 3', Colors.green),
            _buildCircularButton('Button 4', Colors.purple),
            const SizedBox(height: 20),
            _buildIconButton('Button 5', Icons.star, Colors.orange),
            _buildIconButton('Button 6', Icons.home, Colors.teal),
            _buildIconButton('Button 7', Icons.settings, Colors.pink),
            _buildCircularButtonWithIcon('Button 8', Icons.favorite, Colors.purpleAccent),
          ],
        ),
      ),
    );
  }

  Widget _buildTextButton(String text, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        ),
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _buildIconButton(String text, IconData icon, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(icon, color: Colors.white),
        label: Text(text, style: const TextStyle(color: Colors.white)),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
      ),
    );
  }

  Widget _buildCircularButton(String text, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: 100,
      height: 100,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: const CircleBorder(),
          padding: EdgeInsets.zero,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCircularButtonWithIcon(String text, IconData icon, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: 100,
      height: 100,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: const CircleBorder(),
          padding: EdgeInsets.zero,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 30),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
