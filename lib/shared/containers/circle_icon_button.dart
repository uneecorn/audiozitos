import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final IconData iconData;
  final double iconSize;
  final GestureTapCallback onTap;
  final Color primaryColor;
  final double diameter;
  final Color splashColor;
  final Color highlightColor;
  final Color iconColor;

  const CircleIconButton({
    @required this.iconData,
    @required this.iconSize,
    @required this.onTap,
    @required this.primaryColor,
    @required this.diameter,
    @required this.splashColor,
    @required this.highlightColor,
    @required this.iconColor,
  });

  @override
  Widget build(BuildContext context) => Material(
    shadowColor: Colors.black,
    type: MaterialType.button,
    color: this.primaryColor,
    borderRadius: BorderRadius.circular(this.diameter / 2),
    child: Container(
      height: this.diameter,
      width: this.diameter,
      child: InkWell(
        borderRadius: BorderRadius.circular(this.diameter / 2),
        splashColor: this.splashColor,
        highlightColor: this.highlightColor,
        onTap: this.onTap,
        child: Center(
          child: Icon(
            this.iconData,
            size: this.iconSize,
            color: this.iconColor,
          ),
        ),
      ),
    ),
  );
}
