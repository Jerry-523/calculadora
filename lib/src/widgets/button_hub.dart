import 'package:flutter/material.dart';

class ButtonHub extends StatelessWidget {
  const ButtonHub({super.key});

  @override
  Widget build(BuildContext context){
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: <Widget>[
        Container(
          child: Button(color: Colors.indigo, value: '%',)
        ),
        Container(
            child: Button(color: Colors.indigo, value: 'CE',)
        ),
        Container(
            child: Button(color: Colors.indigo, value: 'C',)
        ),
        Container(
            child: Button(color: Colors.indigo[800], value: '',)
        ),
        Container(
            child: Button(color: Colors.blue[500], value: '7',)
        ),
        Container(
            child: Button(color: Colors.blue, value: '8',)
        ),
        Container(
            child: Button(color: Colors.blue, value: '9',)
        ),
        Container(
            child: Button(color: Colors.indigo, value: '÷',)
        ),
        Container(
            child: Button(color: Colors.blue, value: '4',)
        ),
        Container(
            child: Button(color: Colors.blue, value: '5',)
        ),
        Container(
            child: Button(color: Colors.blue, value: '6',)
        ),
        Container(
            child: Button(color: Colors.indigo, value: 'x',)
        ),
        Container(
            child: Button(color: Colors.blue, value: '1',)
        ),
        Container(
            child: Button(color: Colors.blue, value: '2',)
        ),
        Container(
            child: Button(color: Colors.blue, value: '3',)
        ),
        Container(
            child: Button(color: Colors.indigo, value: '+',)
        ),
        Container(
            child: Button(color: Colors.indigo, value: '-',)
        ),
        Container(
            child: Button(color: Colors.blue, value: '0',)
        ),
        Container(
            child: Button(color: Colors.indigo, value: '.',)
        ),
        Container(
            child: Button(color: Colors.indigo[900], value: '=',)
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final Color? color;
  final void Function(String value) onTap;
  final String value;
  const Button({super.key, required this.value, this.color, required this.onTap});

  @override
  Widget build(BuildContext context){
    final color = this.color ?? Theme.of(context).colorScheme.primary;
    return InkWell(
      onTap: onTap == null ? null : () => onTap!(value),
      child: Container(
        padding: const EdgeInsets.all(8),
        color: color,
        child: Center(
          child: Text(
            value,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ),
    );
  }
}