import 'package:flutter/material.dart';
import 'package:zerobalance_expense_calculator/constants/color_constant.dart';

class BlogsSection extends StatelessWidget {
  const BlogsSection({
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
        Text('Blogs', style: TextStyle(fontSize: width * 0.06)),
        SizedBox(height: height * 0.015),
        SizedBox(
          height: 345,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 4),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 312,
                margin: EdgeInsets.only(right: width * 0.03),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Align(
                      child: Container(
                        width: 280,
                        height: 170,
                        decoration: BoxDecoration(
                            color: const Color(0xffEEEEEE),
                            borderRadius: BorderRadius.circular(16)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 264,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '4 methods of calculating Network, which no one will tell you',
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Read Time: 8 min',
                            style:
                                TextStyle(color: kPrimaryColor, fontSize: 12),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                    Align(
                      child: SizedBox(
                        width: 280,
                        height: 40,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Container(
                                    alignment: Alignment.center,
                                    width: 24,
                                    height: 24,
                                    child: Image.asset(
                                        'assets/icons/profile.jpeg',
                                        fit: BoxFit.cover),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(70),
                                    )),
                                const SizedBox(width: 10),
                                const Text(
                                  'Ann Kokowski',
                                  style: TextStyle(fontSize: 12),
                                )
                              ]),
                              const Text(
                                '08/09/2022',
                                style: TextStyle(fontSize: 12),
                              )
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
