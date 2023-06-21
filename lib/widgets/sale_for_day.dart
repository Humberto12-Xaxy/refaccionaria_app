import 'package:flutter/material.dart';

class SaleForDay extends StatelessWidget {
  final String tittleDay;
  const SaleForDay({Key? key, required this.tittleDay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(20),
        ),
        child:  Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                tittleDay,
                style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              const Spacer(),
              const Text(
                '\$20000',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
