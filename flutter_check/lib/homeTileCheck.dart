import 'package:flutter/material.dart';
import 'package:flutter_check/chack_box_custom.dart';
import 'package:flutter_check/check_box_option.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState();

  final List<CheckboxOption> months = [
    CheckboxOption(title: 'Janeiro'),
    CheckboxOption(title: 'Fevereiro'),
    CheckboxOption(title: 'Março'),
    CheckboxOption(title: 'Abril'),
    CheckboxOption(title: 'Maio'),
    CheckboxOption(title: 'Junho'),
    CheckboxOption(title: 'Julho'),
    CheckboxOption(title: 'Agosto'),
    CheckboxOption(title: 'Setembro'),
    CheckboxOption(title: 'Outubro'),
    CheckboxOption(title: 'Novembro'),
    CheckboxOption(title: 'Dezembro')
  ];

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
        child: ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: months.length,
          itemBuilder: (_, index){
            return CheckboxCustomWidget(item: months[index]);
          },
        ),
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
