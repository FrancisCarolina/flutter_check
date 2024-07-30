import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool cbIsSelected_1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: 
          const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 10
                ),
        child: Column(children: <Widget>[
          const Text(
                  "Meu checkbox",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent
                  ),
                ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: 
              <Widget>[
                const Text("Checkbox 1",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )
                ),
                Checkbox(
                  value: cbIsSelected_1, 
                  onChanged: (value) {
                    setState(() {
                      cbIsSelected_1 = value!;
                    });
                  }
                )
              ],
          )
        ],),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        shape: const CircleBorder(),
        child: const Icon(
          Icons.refresh,
          size: 25,
        ),
      ),
    );
  }
}
