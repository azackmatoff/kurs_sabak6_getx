import 'package:flutter/material.dart';
import 'package:kurs_sabak6_getx/app_constants/app_colors.dart';

// typedef JynysTandoo = void Function(Gender); // funksiya jasoo

class ReUsableWidget extends StatelessWidget {
  const ReUsableWidget({
    Key key,
    this.child,
    this.bgColor,
    this.onTap,
    this.flex,
  }) : super(key: key);

  final Widget child;
  final Color bgColor;
  final VoidCallback onTap; //VoidCallback oorduna Function koldonso da bolot
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: bgColor ?? AppColors.activeIconColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: child,
        ),
      ),
    );
  }
}
