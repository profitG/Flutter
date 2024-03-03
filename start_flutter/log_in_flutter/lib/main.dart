import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hello Flutter',
            style: TextStyle(fontSize: 28),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Image.network(
                    "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                    width: 81,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 10.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Log in'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
