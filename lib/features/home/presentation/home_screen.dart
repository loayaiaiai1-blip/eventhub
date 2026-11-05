import 'package:eventhub/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eventhub/core/utils/colors.dart';
import 'package:eventhub/core/constants/app_images.dart';
import 'package:eventhub/features/home/widgets/location_widget.dart';
import 'package:gap/gap.dart';
import '../widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        toolbarHeight: 60,
        leadingWidth: 60,
        leading: Padding(
          padding: const EdgeInsets.all(16),
          child: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              AppImages.menuicon,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),

        title: LocationWidget(location: 'Enter Your Location', onTap: () {}),
        
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: () {
                // Navigate to notifications
              },
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                  color: AppColors.containerbackgroundColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    AppImages.bellicon,
                    width: 22,
                    height: 22,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          HomeHeader(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Upcoming Events',
                    style: TextStyles.styleSize18Bold(
                      color: AppColors.darkColor,
                    ),
                  ),
                  Gap(16),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Your events will appear here',
                        style: TextStyles.styleSize14Medium(
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
