import 'package:flutter/material.dart';

sealed class ButtonClick {
  final String value;

  ButtonClick(this.value);
}

class CommonButtonClick extends ButtonClick {
  CommonButtonClick(super.value);
}

class EqualsButtonClick extends ButtonClick {
  EqualsButtonClick(super.value);
}

class ClearButtonClick extends ButtonClick {
  ClearButtonClick(super.value);
}

class DelButtonClick extends ButtonClick {
  DelButtonClick(super.value);
}

class ClearEntryButtonClick extends ButtonClick {
  ClearEntryButtonClick(super.value);
}

class ButtonHub extends StatelessWidget {

  final void Function(ButtonClick click)? onButtonClick;

  const ButtonHub({super.key, required this.onButtonClick});

  @override
  Widget build(BuildContext context){
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: <Widget>[
        Button(
          color: Colors.indigo,
          value: '%',
          onTap: (value) => onButtonClick!(CommonButtonClick(value)),
        ),
        Button(
          color: Colors.indigo,
          value: 'CE',
          onTap: (value) => onButtonClick!(ClearEntryButtonClick(value)),
        ),
        Button(
          color: Colors.indigo,
          value: 'C',
          onTap: (value) => onButtonClick!(ClearButtonClick(value)),
        ),
        Button(
          color: Colors.indigo[800],
          icon: const Icon(Icons.clear),
          value: '️⬅️',
          onTap: (value) => onButtonClick!(DelButtonClick(value)),
        ),
        Button(
          color: Colors.blue[500],
          value: '7',
          onTap: (value) => onButtonClick!(CommonButtonClick(value)),
        ),
        Button(
          color: Colors.blue,
          value: '8',
          onTap: (value) => onButtonClick!(CommonButtonClick(value)),
        ),
        Button(
          color: Colors.blue,
          value: '9', onTap: (value) => onButtonClick!(CommonButtonClick(value)),
        ),
        Button(
            color: Colors.indigo,
            value: '/',
            onTap: (value) => onButtonClick!(CommonButtonClick(value))
        ),
        Button(
            color: Colors.blue,
            value: '4',
            onTap: (value) => onButtonClick!(CommonButtonClick(value))
        ),
        Button(
          color: Colors.blue,
          value: '5',
          onTap: (value) => onButtonClick!(CommonButtonClick(value)),
        ),
        Button(
          color: Colors.blue,
          value: '6',
          onTap: (value) => onButtonClick!(CommonButtonClick(value)),
        ),
        Button(
          color: Colors.indigo,
          value: '*',
          onTap: (value) => onButtonClick!(CommonButtonClick(value)),
        ),
        Button(
          color: Colors.blue,
          value: '1',
          onTap: (value) => onButtonClick!(CommonButtonClick(value)),
        ),
        Button(
          color: Colors.blue,
          value: '2',
          onTap: (value) => onButtonClick!(CommonButtonClick(value)),
        ),
        Button(
          color: Colors.blue,
          value: '3',
          onTap: (value) => onButtonClick!(CommonButtonClick(value)),
        ),
        Button(
          color: Colors.indigo,
          value: '+',
          onTap: (value) => onButtonClick!(CommonButtonClick(value)),
        ),
        Button(
          color: Colors.indigo,
          value: '-',
          onTap: (value) => onButtonClick!(CommonButtonClick(value)),
        ),
        Button(
          color: Colors.blue,
          value: '0',
          onTap: (value) => onButtonClick!(CommonButtonClick(value))
        ),
        Button(color: Colors.indigo, value: '.', onTap: (String value) {  },),
        Button(
          color: Colors.indigo[900],
          value: '=',
          onTap: (value) => onButtonClick!(EqualsButtonClick(value)),
        ),
        ],
    );
  }
}

class Button extends StatelessWidget {
  final Color? color;
  final Icon? icon;
  final void Function(String value) onTap;
  final String value;
  const Button({super.key, required this.value, this.color, required this.onTap, this.icon});

  @override
  Widget build(BuildContext context){
    final color = this.color ?? Theme.of(context).colorScheme.primary;
    return Material(
      color: color,
      child: InkWell(
        onTap: onTap == null ? null : () => onTap!(value),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Text(
              value,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ),
      )
    );
  }
}