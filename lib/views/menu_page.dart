import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refaccionaria/widgets/product.dart';

import '../routes/routes.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.shade500,
            shape: const CircleBorder(),
            padding: EdgeInsets.all(size.width * 0.04)),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.01, horizontal: size.width * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.045),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Productos',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 20,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 15.0,
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.0,
                    mainAxisExtent: size.height * 0.275),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: const Product(
                      urlImage:
                          'https://img.ltwebstatic.com/images3_pi/2023/02/24/16772011063f3357db59717a913c889f89a5bfc461_thumbnail_600x.jpg',
                      name: 'Este es un producto',
                      price: '180',
                    ),
                    onTap: () => Get.toNamed(RoutesClass.product),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
