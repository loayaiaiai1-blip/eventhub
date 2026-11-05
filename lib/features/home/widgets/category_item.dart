import 'package:eventhub/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  final String title;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),

      padding: const EdgeInsets.symmetric(horizontal: 22),

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(40),
      ),

      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: AppColors.whiteColor, size: 27),

          const SizedBox(width: 8),

          Text(
            title,
            style: const TextStyle(color: AppColors.whiteColor, fontSize: 19),
          ),
        ],
      ),
    );
  }
}
