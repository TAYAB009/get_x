import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dialoges',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Get-X'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: 'DMC SHEET',
                    //  backgroundColor: Colors.blueGrey,
                    middleText: 'Result has been uploaded!',
                    textCancel: 'Cancel',
                    textConfirm: 'Confirm',
                    confirmTextColor: Colors.green,
                    onCancel: () {},
                    onConfirm: () {},
                    buttonColor: Colors.pinkAccent,
                    content: Row(
                      children: const [
                        CircularProgressIndicator(),
                        SizedBox(width: 26.0),
                        Expanded(child: Text('Data is Loading'))
                      ],
                    ),
                    cancel: const Text(
                      'No',
                      style: TextStyle(fontSize: 19.0),
                    ),
                    actions: [
                      ElevatedButton(onPressed: () {}, child: Text('Button-1')),
                      ElevatedButton(onPressed: () {}, child: Text('Button-2')),
                    ],
                    //  barrierDismissible: true,
                  );
                },
                child: const Text('show Snackbar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
