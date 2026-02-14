import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PizzaOptions extends StatelessWidget {
  final String title;

  const PizzaOptions(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            '$title',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            minimumSize: Size(35, 35),
            padding: EdgeInsets.zero,
            elevation: 2.0,
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            '+',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ],
    );
  }
}
