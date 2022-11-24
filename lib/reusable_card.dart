import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Border cardBorder;
  final Widget? cardChild;
  const ReusableCard({
    super.key,
    required this.cardBorder,
    this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: cardBorder,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(25.0),
      margin: const EdgeInsets.all(20.0),
      child: cardChild,
    );
  }
}
