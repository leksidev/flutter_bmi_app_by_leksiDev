import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    required this.cardColor,
    this.cardChild,
    this.onPress,
  });

  final Color cardColor;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: cardColor,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 130, 130, 130).withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(2, 2), // changes position of shadow
            ),
          ],
        ),
        padding: const EdgeInsets.all(15.0),
        margin: const EdgeInsets.all(15.0),
        child: cardChild,
      ),
    );
  }
}
