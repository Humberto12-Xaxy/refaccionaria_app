import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refaccionaria/controllers/change_view_controller.dart';
import 'package:refaccionaria/views/account_page.dart';
import 'package:refaccionaria/views/categories_page.dart';
import 'package:refaccionaria/views/scanner_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controllerIndex = Get.find<ChangeViewController>();
  final List<Widget> views =  [
    const CategoryPage(),
    ScannerPage(),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChangeViewController>(
      builder: (_) => Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          onTap: (value) {
            controllerIndex.changeindex(value);
          },
          height: 60.0,
          animationDuration: const Duration(milliseconds: 350),
          backgroundColor: Colors.black,
          color: Colors.grey.shade50,
          items: const <Widget>[
            Icon(
              Icons.category,
            ),
            Icon(
              Icons.qr_code_scanner_sharp,
            ),
            Icon(
              Icons.attach_money,
              size: 30,
            ),
          ],
        ),
        body: IndexedStack(
          index: controllerIndex.index,
          children: views,
        ),
      ),
    );
  }
}
