import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _nameState();
}

class _nameState extends State<HomePage> {
  final person = List<String>.generate(1000, (int index) => "Person $index");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Long List"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: person.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(person[index]),
              subtitle: Text("Sub title"),
              onTap: () {
                Fluttertoast.showToast(msg: person[index]);
              },
            );
          }),
    );
  }
}
