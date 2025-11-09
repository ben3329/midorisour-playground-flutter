import 'package:flutter/material.dart';

class ToolbarIconButton extends StatelessWidget {
  const ToolbarIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.tooltip,
    required this.background,
    required this.iconColor,
    this.borderColor,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final String tooltip;
  final Color background;
  final Color iconColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Material(
        color: background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: borderColor == null
              ? BorderSide.none
              : BorderSide(color: borderColor!),
        ),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            height: 40,
            width: 40,
            child: Icon(icon, color: iconColor, size: 22),
          ),
        ),
      ),
    );
  }
}
