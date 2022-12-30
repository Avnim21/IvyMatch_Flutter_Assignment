import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body:Example(),
      ),
    );
  }
}
void main() {
  runApp(MyApp());
}

class Example extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExampleState();
}
class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: new Column(
        children: [
          new Container(height:MediaQuery.of(context).size.height * 0.025,
          width:MediaQuery.of(context).size.width,alignment: Alignment.center,child: MyCustomForm(),),
          new Container(
            height:MediaQuery.of(context).size.height * 0.025,
          width:MediaQuery.of(context).size.width,
          child:Dropdown()),
        ],
      ),
    );
  }
}
class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
        ),
      ],
    );
  }
}

class _DropdownState extends State<Dropdown> {
List<String> _options = ['A', 'B', 'C', 'D']; // Option 1
List<String> _options1 = ['A', 'B', 'C', 'E'];
String _selectedOptions = 'A'; // Option 1
String _selectedOptions1='A';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        body:Center(
          child: DropdownButton(
            value: _selectedOptions,
            onChanged: (String? newValue) {
              setState(() {
                _selectedOptions = newValue.toString();
              });
            },
            items: _options.map((option) {
              return DropdownMenuItem(
                child: new Text(option),
                value: option,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}