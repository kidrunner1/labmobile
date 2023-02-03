import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class MoneyBox extends StatelessWidget {
  String title;
  Color color;
  double amount;
  double size;

  MoneyBox(this.title, this.amount, this.color, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      height: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: Text(
            NumberFormat("#,###.00").format(amount),
            style: const TextStyle(
                fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ))
        ],
      ),
    );
  }
}
