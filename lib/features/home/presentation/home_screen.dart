import 'package:eventhub/core/utils/text_styles.dart';
import 'package:eventhub/features/home/widgets/event_card.dart';
import 'package:eventhub/features/home/widgets/invite_friends_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eventhub/core/utils/colors.dart';
import 'package:eventhub/core/constants/app_images.dart';
import 'package:eventhub/features/home/widgets/location_widget.dart';

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
            padding: EdgeInsets.only(right: 16),
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
                    colorFilter: ColorFilter.mode(
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
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Events',
                    style: TextStyles.styleSize18Bold(
                      color: AppColors.darkColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "See all",
                          style: TextStyles.styleSize10Medium(
                            color: AppColors.greyColor,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.greyColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            //claude part 
            // Horizontal events list (no data yet)
            SizedBox(
              height: 255,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: 5, // replace with events.length later
                separatorBuilder: (_, _) => const SizedBox(width: 16),
                itemBuilder: (context, index) => const EventCard(),
              ),
            ),
            const SizedBox(height: 18),
            //end of claude part

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InviteFriendsCard(
                onTap: () {
                  //invite action
                },
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