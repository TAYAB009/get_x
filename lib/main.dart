import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bottom sheets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom sheets'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text('Light Theme'),
                          onTap: () => {},
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny),
                          title: Text('Dark Theme'),
                          onTap: () => {},
                        )
                      ],
                    ),
                  ));
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
