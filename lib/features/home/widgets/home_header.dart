import 'package:eventhub/components/inputs/custom_text_field.dart';
import 'package:eventhub/core/constants/app_images.dart';
import 'package:eventhub/core/utils/colors.dart';
import 'package:eventhub/features/home/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  late TextEditingController searchController;
  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 105,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),

              child: Column(
                children: [
                  Gap(18),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          controller: searchController,
                          hint: 'Search...',
                          hintColor: AppColors.greyColor,
                          textColor: AppColors.whiteColor,
                          border: InputBorder.none,
                          prefixIcon: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [SvgPicture.asset(AppImages.search)],
                          ),
                        ),
                      ),
                      Gap(10),
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 10,
                          ),

                          decoration: BoxDecoration(
                            color: AppColors.containerbackgroundColor,
                            borderRadius: BorderRadius.circular(30),
                          ),

                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.tune,
                                color: AppColors.whiteColor,
                                size: 20,
                              ),

                              SizedBox(width: 6),

                              Text(
                                'Filters',
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,

            child: SizedBox(
              height: 65,

              child: ListView(
                scrollDirection: Axis.horizontal,

                padding: const EdgeInsets.symmetric(horizontal: 8),

                children: const [
                  CategoryItem(
                    title: 'Sports',
                    icon: Icons.sports_basketball,
                    color: AppColors.redColor,
                  ),

                  CategoryItem(
                    title: 'Music',
                    icon: Icons.music_note,
                    color: Color(0xFFF7945F),
                  ),

                  CategoryItem(
                    title: 'Food',
                    icon: Icons.restaurant,
                    color: Color(0xFF20D3A0),
                  ),

                  CategoryItem(
                    title: 'Art',
                    icon: Icons.palette,
                    color: Color(0xFF39C8F5),
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
