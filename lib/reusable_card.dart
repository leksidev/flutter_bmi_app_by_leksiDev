import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    required this.cardBorder,
    this.cardChild,
    this.onPress,
  });

  final Border cardBorder;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          border: cardBorder,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsets.all(20.0),
        child: cardChild,
      ),
    );
  }
}
