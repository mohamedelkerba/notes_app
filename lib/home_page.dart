import 'package:flutter/material.dart';
import 'package:training/setting_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textFormFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
            onTap: () {
              if (textFormFieldController.text == "") {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const SettingPage()));
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => Dialog(
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                        const Text('Are you sure !!'),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close'),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
            },
            child: const Icon(
              Icons.arrow_back,
              size: 20,
              color: Colors.black,
            )),
        centerTitle: true,
        title: Text(widget.title),
        elevation: 1,
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
            decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            ),
            controller: textFormFieldController,
            autofocus: false,
            onChanged: (value) {
              if (textFormFieldController.text.trim() == "") {
                print("I am empty");
              } else {
                print("I am filled");
              }
              },
            ),
          )
      ),
    );
  }
}
