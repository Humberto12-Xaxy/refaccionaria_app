import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nombre del producto'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05,
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        child: Column(
          children: [
            Container(
              height: 250.0,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.blue),
            ),
            const Text(
              'Nombre del producto',
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              'Precio del producto',
              style: TextStyle(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Eliminar'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Editar'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Vender'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
