import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zerobalance_expense_calculator/modules/second_screen/controller/second_screen_controller.dart';
import 'package:zerobalance_expense_calculator/widgets/components/blogs_section.dart';
import 'package:zerobalance_expense_calculator/widgets/components/category_section.dart';
import 'package:zerobalance_expense_calculator/widgets/shared/custom_app_bar.dart';
import 'package:zerobalance_expense_calculator/widgets/components/offer_reward_section.dart';
import 'package:zerobalance_expense_calculator/widgets/components/task_section.dart';
import 'package:zerobalance_expense_calculator/widgets/components/quote_section.dart';
import 'package:zerobalance_expense_calculator/widgets/components/expenditure_stats.dart';
import 'package:zerobalance_expense_calculator/widgets/shared/bottom_nav_bar.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SecondScreenController controller = Get.put(SecondScreenController());
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        extendBody: true,
        bottomNavigationBar: BottomNavbar(width: width),
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowIndicator();
              return true;
            },
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.04),
                  const Text(
                    'Your doing\ngreat keep it up. 👍',
                    style: TextStyle(
                      color: Color(0xff525251),
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: height * 0.04),
                  ExpenditureStats(
                      isHome: false,
                      onClickFunction: () =>
                          controller.onClickAdd(context, width, height)),
                  SizedBox(height: height * 0.045),
                  CategorySection(width: width, height: height),
                  SizedBox(height: height * 0.03),
                  TaskSection(width: width, height: height),
                  SizedBox(height: height * 0.03),
                  OfferAndRewardSection(width: width, height: height),
                  SizedBox(height: height * 0.03),
                  BlogsSection(width: width, height: height),
                  SizedBox(height: height * 0.03),
                  QuoteSection(width: width),
                  //extra spacing for floating bottom bar
                  SizedBox(height: height * 0.08)
                ],
              ),
            ),
          ),
        ));
  }
}
