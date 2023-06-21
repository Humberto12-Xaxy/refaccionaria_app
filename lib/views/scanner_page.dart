import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refaccionaria/controllers/scanner_controller.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class ScannerPage extends StatelessWidget {
  ScannerPage({Key? key}) : super(key: key);

  final controller = Get.put(ScannerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scanner')),
      body: Center(
        child: GetBuilder<ScannerController>(
          builder: (_) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () async {
                  var res = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SimpleBarcodeScannerPage(),
                      ));
                  if (res is String) {
                    Get.toNamed('/menuProducts');
                    controller.getBarCode(res);
                  }
                },
                child: const Text('Open Scanner'),
              ),
              Text(
                'Barcode Result: ${controller.barCode}',
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
