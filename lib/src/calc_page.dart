import 'package:flutter/material.dart';

import 'widgets/button_hub.dart';
import 'widgets/display.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  @override
  Widget build(BuildContext context){
    return const Material(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Display(value: '100'),
          ),
          Expanded(
            flex: 3,
            child: ButtonHub(),
          ),
        ],
      ),
    );
  }
}