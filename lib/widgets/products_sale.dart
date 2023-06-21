import 'package:flutter/material.dart';

import 'buttom_products_sale.dart';

class ProductSale extends StatelessWidget {
  final String tittleProductDate;
  const ProductSale({Key? key, required this.tittleProductDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20.0),
              child: Text(
                tittleProductDate,
                style: const TextStyle(
                    fontSize: 20.0, fontStyle: FontStyle.italic),
              ),
            ),
            const Divider(),
            const ButtomProductSale()
          ],
        ),
      ),
    );
  }
}
