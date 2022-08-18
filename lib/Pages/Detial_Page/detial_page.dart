import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetialPage extends StatefulWidget {
  final String input;
  const DetialPage({super.key, required this.input});

  @override
  State<DetialPage> createState() => _DetialPageState();
}

class _DetialPageState extends State<DetialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('detial page')),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).pop({'data': "Salom Ravshanbek"});
          },
          color: Colors.red,
          child: Text(widget.input),
        ),
      ),
    );
  }
}
