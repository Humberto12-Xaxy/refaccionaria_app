import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refaccionaria/routes/routes.dart';
import 'package:refaccionaria/widgets/category.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.08, horizontal: size.width * 0.07),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Categorias',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(RoutesClass.getMenuProducsForCategory());
                    },
                    child: const CategoryCard(
                      nameCategory: 'Category',
                      urlImage:
                          'https://uploads-ssl.webflow.com/60aea4e5ac6df63edce0b8b4/61739d36c104718690a12ca9_Autoseguro-Crabi-Blog-Cat-Accesorios-para-Autos.jpg',
                    ),
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
