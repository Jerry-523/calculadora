import 'package:calculadora/src/controllers/calc_controller.dart';
import 'package:flutter/material.dart';

import 'widgets/button_hub.dart';
import 'widgets/display.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {

  final controller = CalcController();

  void _listenner(){
    setState(() {

    });
  }

  @override
  void initState(){
    super.initState();
    controller.addListener(_listenner);
  }

  @override
  void dispose(){
    controller.removeListener(_listenner);
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Material(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Display(value: controller.display),
          ),
          Expanded(
            flex: 3,
            child: ButtonHub(
              onButtonClick: controller.onButtonClick,
            ),
          ),
        ],
      ),
    );
  }
}