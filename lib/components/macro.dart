import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MacroWidget extends StatelessWidget {
  final String title;
  final int value;
  final IconData icon;

  const MacroWidget({
    required this.title,
    required this.value,
    required this.icon,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                offset: const Offset(2, 2),
                blurRadius: 5
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  icon, 
                  color: Colors.redAccent,
                ),
                const SizedBox(height: 4),
                Text(
                  title == "Calories"
                    ? '$value \n$title'
                    : '${value}g \n$title',
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                  
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}