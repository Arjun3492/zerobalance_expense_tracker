import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.width,
    required this.height,
    required this.number,
    required this.heading,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final double width;
  final double height;
  final String number;
  final String heading;
  final String icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: width * 0.02),
      width: 166,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffEEEEEE)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            left: -18,
            top: -27,
            child: Container(
              padding: const EdgeInsets.only(top: 20, left: 10),
              alignment: Alignment.center,
              child: Text(
                icon,
                style: const TextStyle(fontSize: 40),
              ),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.all(Radius.circular(100))),
            ),
          ),
          Positioned(
              left: 82,
              child: Container(
                  alignment: Alignment.center,
                  width: 70,
                  height: 70,
                  child: Text(
                    number,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: color),
                  ))),
          Positioned(
              top: 70,
              child: SizedBox(
                  width: 156,
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        heading,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: height * 0.005),
                      const Text(
                        'Create Category and\n       earn Rs. 25',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
