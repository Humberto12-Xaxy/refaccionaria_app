import 'package:flutter/material.dart';
import 'package:refaccionaria/widgets/sale_for_day.dart';

import '../widgets/products_sale.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

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
              'Cuentas',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView(
                children: const [
                  SaleForDay(
                    tittleDay: 'Ganancia del día',
                  ),
                  ProductSale(
                    tittleProductDate: 'Productos vendidos en el día',
                  ),
                  SaleForDay(
                    tittleDay: 'Ganancia de la semana',
                  ),
                  ProductSale(
                    tittleProductDate: 'Productos vendidos en la semana',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
