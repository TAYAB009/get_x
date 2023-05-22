import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
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
                  Get.snackbar(
                    'Test Result',
                    'Your test has been uploaded!',
                    colorText: Colors.pink,
                    backgroundColor: Colors.black,
                    // borderRadius: 20.0,
                    // backgroundGradient: const LinearGradient(
                    //     colors: [Colors.black, Colors.grey]),
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    overlayBlur: 5.0,
                    // overlayColor: Colors.green,
                    //showProgressIndicator: true,
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
