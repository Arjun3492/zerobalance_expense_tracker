import 'package:flutter/material.dart';
import 'package:zerobalance_expense_calculator/constants/color_constant.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: width,
      height: 78,
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(9, 7),
                  spreadRadius: 0,
                  blurRadius: 13,
                  color: Color.fromARGB(107, 0, 0, 0),
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 108,
                child: Center(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                        color: const Color(0xffE8EAF6),
                        borderRadius: BorderRadius.circular(50)),
                    height: 36,
                    width: 82,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.home,
                              color: Color(0xff303F9F), size: 20),
                          Text(
                            'Home',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                ),
              ),
              const SizedBox(
                width: 68,
                height: 56,
                child: Center(
                  child: Icon(
                    Icons.credit_card,
                    size: 20,
                    color: Color(0xffB7B7B7),
                  ),
                ),
              ),
              const SizedBox(
                width: 68,
                height: 56,
                child: Center(
                  child: Icon(
                    Icons.pie_chart,
                    size: 20,
                    color: Color(0xffB7B7B7),
                  ),
                ),
              ),
              const SizedBox(
                width: 68,
                height: 56,
                child: Center(
                  child: Icon(
                    Icons.flag,
                    size: 20,
                    color: Color(0xffB7B7B7),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
