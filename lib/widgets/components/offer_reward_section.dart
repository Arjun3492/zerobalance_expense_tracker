import 'package:flutter/material.dart';
import 'package:zerobalance_expense_calculator/constants/color_constant.dart';

class OfferAndRewardSection extends StatelessWidget {
  const OfferAndRewardSection({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Offers and Rewards', style: TextStyle(fontSize: width * 0.06)),
        SizedBox(height: height * 0.015),
        SizedBox(
          height: 345,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 4),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(right: width * 0.05),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(3, 3),
                        spreadRadius: -3,
                        blurRadius: 9,
                        color: Color.fromARGB(76, 0, 0, 0),
                      )
                    ]),
                width: 304,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 304,
                      height: 180,
                      decoration: BoxDecoration(
                          color: const Color(0xffEEEEEE),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 264,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'A rewarding Celebration',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Win rewards from Citizen,peter, england and more',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 273,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color(0xffADB4E2))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(width: 10),
                              Text(
                                'Expore Rewards',
                                style: TextStyle(
                                    fontSize: 14, color: kPrimaryColor),
                              ),
                              const SizedBox(width: 10),
                              Icon(
                                Icons.add,
                                color: kPrimaryColor,
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
