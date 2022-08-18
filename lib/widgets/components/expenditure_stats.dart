import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:zerobalance_expense_calculator/constants/color_constant.dart';

class ExpenditureStats extends StatelessWidget {
  const ExpenditureStats({
    Key? key,
    required this.onClickFunction,
    required this.home,
  }) : super(key: key);
  final bool home;
  final Function onClickFunction;
  @override
  Widget build(BuildContext context) {
    final _random = Random();
    double totalExpenditure = 0;
    int expenditure() => 50 + _random.nextInt(500 - 50);
    final _spots = List<FlSpot>.generate(30, (i) {
      double _expenditure = expenditure().toDouble();
      totalExpenditure += _expenditure;
      return FlSpot(i.toDouble(), _expenditure);
    });

    return Align(
      child: Container(
        height: home ? 544 : 566,
        decoration: BoxDecoration(
            color: kPrimaryColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
            borderRadius: BorderRadius.circular(24)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Total Spends',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '₹$totalExpenditure',
                    style: const TextStyle(color: Colors.white, fontSize: 32),
                  ),
                ],
              ),
            ),
            const Text(
              '  ₹18000 ------------------------------------ budget',
              style: TextStyle(
                  fontSize: 12, color: Color(0xffADB4E2), letterSpacing: 2),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            SizedBox(
                width: 340,
                height: 122,
                child: LineChart(lineChartData(_spots))),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "Jan Month's Data",
                style: TextStyle(fontSize: 12, color: Color(0xffADB4E2)),
              ),
            ),
            const SizedBox(height: 20),
            home
                ? Center(
                    child: Container(
                      width: 312,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: Stack(children: [
                        SizedBox(
                          width: 200,
                          height: 160,
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 16, top: 15, bottom: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Pending KYC',
                                  style: TextStyle(fontSize: 20),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem",
                                  style: TextStyle(fontSize: 12),
                                ),
                                const SizedBox(height: 15),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                    onTap: () {
                                      onClickFunction();
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 146,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffE13B30),
                                          borderRadius:
                                              BorderRadius.circular(84)),
                                      child: const Text(
                                        "Complete Now",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 210,
                          top: -22,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color.fromARGB(20, 255, 59, 48)),
                            width: 144,
                            height: 144,
                            child: const Text(
                              '  🔑',
                              style: TextStyle(fontSize: 48),
                            ),
                          ),
                        )
                      ]),
                    ),
                  )
                : Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 36),
                    child: Row(
                      children: [
                        Column(
                          children: const [
                            CardTile(
                              emoji: '🐖',
                              subtitle: '₹2,000',
                              title: 'Projected Saving',
                            ),
                            SizedBox(height: 8),
                            CardTile(
                              emoji: '🍔',
                              subtitle: '₹2,000',
                              title: 'Highest Spent',
                            )
                          ],
                        ),
                        const SizedBox(width: 10),
                        CardTile2(onClickFunction: onClickFunction)
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}

class CardTile2 extends StatelessWidget {
  const CardTile2({
    required this.onClickFunction,
    Key? key,
  }) : super(key: key);
  final Function onClickFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 16),
      height: 183,
      width: 144,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Card balance',
            style: TextStyle(fontSize: 12, color: Color(0xff525251)),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '₹1,500',
                style: TextStyle(fontSize: 24, color: Color(0xff525251)),
              ),
              Container(
                width: 48,
                height: 17,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: const Color.fromARGB(68, 225, 60, 48)),
                child: const Center(
                  child: Text(
                    'Low bal',
                    style: TextStyle(fontSize: 10, color: Color(0xffE13B30)),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {
                onClickFunction();
              },
              child: Container(
                padding: const EdgeInsets.only(right: 17),
                alignment: Alignment.centerRight,
                height: 80,
                width: 78,
                decoration: BoxDecoration(
                    color: const Color(0xff303F9F),
                    borderRadius: BorderRadius.circular(84)),
                child: const Text(
                  'Add',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardTile extends StatelessWidget {
  const CardTile(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.emoji})
      : super(key: key);
  final String title;
  final String emoji;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 144,
      height: 87,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 14, left: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: const Color.fromARGB(71, 225, 150, 0),
                  child: Text(
                    emoji,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  title,
                  style:
                      const TextStyle(fontSize: 12, color: Color(0xff525251)),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              subtitle,
              style: const TextStyle(fontSize: 18, color: Color(0xff2F2F30)),
            ),
          )
        ],
      ),
    );
  }
}

LineChartData lineChartData(List<FlSpot> spots) {
  return LineChartData(
    titlesData: FlTitlesData(
      show: false,
    ),
    gridData: FlGridData(
      show: false,
    ),
    borderData: FlBorderData(show: false),
    minX: 0,
    maxX: 30,
    minY: 0,
    maxY: 550,
    lineBarsData: [
      LineChartBarData(
        spots: spots,
        isCurved: true,
        color: const Color(0xFFCCD2FF),
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            colors:
                gradientColors.map((color) => color.withOpacity(.6)).toList(),
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    ],
  );
}
