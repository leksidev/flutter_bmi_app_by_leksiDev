import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/constants.dart';

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
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: kPrimaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 8,
              offset: const Offset(2, 2), // changes position of shadow
            ),
          ],
        ),
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsets.all(20.0),
        child: cardChild,
      ),
    );
  }
}
