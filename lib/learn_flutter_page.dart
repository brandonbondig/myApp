import 'package:flutter/foundation.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class LeanFlutterPage extends StatefulWidget {
  const LeanFlutterPage({Key? key}) : super(key: key);

  @override
  State<LeanFlutterPage> createState() => _LeanFlutterPageState();
}

class _LeanFlutterPageState extends State<LeanFlutterPage> {
  bool isSwitch = false;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Actions");
            },
            icon: const Icon(Icons.info_outline),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/einstein.jpg"),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "This is a text widget",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: isSwitch ? Colors.green : Colors.blue),
              onPressed: () {
                debugPrint("Elevated Button");
              },
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Elevated Button");
              },
              child: const Text("Outline Button"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text Button");
              },
              child: const Text("Elevated Button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("Gesture Detected");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text("Row Widget"),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
              value: isChecked,
              onChanged: (bool? newBool) {
                setState(() {
                  isChecked = newBool;
                });
              },
            ),
            Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/7/79/Tesla_circa_1890.jpeg')
          ],
        ),
      ),
    );
  }
}
