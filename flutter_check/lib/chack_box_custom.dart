import 'package:flutter/material.dart';
import 'package:flutter_check/check_box_option.dart';

class CheckboxCustomWidget extends StatefulWidget{
  const CheckboxCustomWidget({super.key, required this.item});

  final CheckboxOption item;

  @override
  State<CheckboxCustomWidget> createState() => _CheckboxCustomWidgetState();
}

class _CheckboxCustomWidgetState extends State<CheckboxCustomWidget>{
  @override
  Widget build(BuildContext context){
    return CheckboxListTile(
      title: Text(widget.item.title),
      value: widget.item.checked,
      onChanged: (value) => {
        setState((){
          widget.item.checked = value!;
        })
      },
    );
  }
}