import 'package:eventhub/core/utils/colors.dart';
import 'package:eventhub/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key,
    required this.location,
    required this.onTap,
  });

  final String location;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                  'Current Location',
                  style: TextStyle(
                    color: Color(0xFFc8c6f9),
                    fontSize: 12,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.whiteColor,
                  size: 16,
                ),
            ],
          ),
            Text(
              location,
              style: TextStyles.styleSize14Regular(color: AppColors.whiteColor)
            ),
          ],
        ),
      ),
    );
  }
  }