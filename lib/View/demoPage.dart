import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minggu9_getx/Control/demoController.dart';

class DemoPage extends StatelessWidget {
  final DemoController ctrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  Get.arguments(
                  SwitchListTile(
                    value: ctrl.isDark,
                    title: const Text("Click Here to change Theme mode"),
                    onChanged: ctrl.changeTheme,
                  ),
                  ElevatedButton(
                    onPressed: () => Get.snackbar(
                        "Snackbar", "Hello this is a snackbar message",
                        snackPosition: SnackPosition.BOTTOM,
                        colorText: Colors.white,
                        backgroundColor: Colors.black87),
                    child: const Text("Snack Bar"),
                  ),
                  ElevatedButton(
                    onPressed: () => Get.defaultDialog(
                        title: "Dialogue", content: const Text('Hey from dialogue')),
                    child: const Text("Dialogue"),
                  ),
                  ElevatedButton(
                      onPressed: () => Get.bottomSheet(Container(
                            height: 150,
                            color: Colors.white,
                            child: const Text("Hello From Bottom Sheet",
                                style: TextStyle(fontSize: 30.0)),
                          )),
                      child: const Text("Bottom Sheet")),
                  ElevatedButton(
                    onPressed: () => Get.offNamed('/'),
                    child: const Text('Back To Home'),
                  )),
            )
            )
          ],
        ),
      ),
    );
  }
}
