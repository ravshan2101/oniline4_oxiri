import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:oniline4_oxiri/Pages/Detial_Page/detial_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? data = "D";
  Future _openDetielPage() async {
    Map<String, dynamic> results = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return const DetialPage(input: "hello pdp online");
    }));
    if (results != null && results.containsKey('data')) {
      setState(() {
        data = results['data'];
      });
    } else {
      print("Nothing");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: const Text("home page"), backgroundColor: Colors.red),
        body: Center(
          child: MaterialButton(
            onPressed: () {
              _openDetielPage();
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const DetialPage()));
            },
            color: Colors.red,
            child: Text(data!),
          ),
        ));
  }
}
