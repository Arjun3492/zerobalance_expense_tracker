import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zerobalance_expense_calculator/constants/color_constant.dart';

class SecondScreenController extends GetxController {
  void onClickAdd(BuildContext context, width, height) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0.1,
              backgroundColor: Colors.white,
              iconTheme: Theme.of(context).iconTheme,
              title: const Text(
                'Adding Transaction',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            body: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overscroll) {
                overscroll.disallowIndicator();
                return true;
              },
              child: SingleChildScrollView(
                child: Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.06, vertical: height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Enter Amount Spend',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                      const SizedBox(height: 10),
                      const Text(
                          'Enter the amount that you have spend without using zero balance',
                          style: TextStyle(
                              color: Color(0xff757575), fontSize: 14)),
                      const SizedBox(height: 10),
                      Align(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Amount",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text('Enter Date',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            height: 48,
                            width: 368,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xffEEEEEE),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(12)),
                            )),
                      ),
                      const SizedBox(height: 15),
                      const Text('Mode of Payment',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 112.33,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: kPrimaryColor)),
                            child: Text(
                              'UPI',
                              style:
                                  TextStyle(color: kPrimaryColor, fontSize: 16),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Container(
                            alignment: Alignment.center,
                            width: 112.33,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: kPrimaryColor)),
                            child: Text(
                              'Card',
                              style:
                                  TextStyle(color: kPrimaryColor, fontSize: 16),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Container(
                            alignment: Alignment.center,
                            width: 112.33,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: kPrimaryColor)),
                            child: Text(
                              'Cash',
                              style:
                                  TextStyle(color: kPrimaryColor, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Text('Quick Note',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                      const SizedBox(height: 10),
                      Align(
                        child: Container(
                          padding: const EdgeInsets.only(left: 10, top: 12),
                          child: const Text(
                            'Quick note',
                            style: TextStyle(
                                color: Color(0xffCBCACB), fontSize: 16),
                          ),
                          height: 48,
                          width: 348,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffEEEEEE),
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 360,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: kPrimaryColor,
                          ),
                          child: const Center(
                              child: Text('Save',
                                  style: TextStyle(color: Colors.white))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
