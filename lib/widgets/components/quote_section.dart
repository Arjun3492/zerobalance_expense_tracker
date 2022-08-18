import 'package:flutter/material.dart';

class QuoteSection extends StatelessWidget {
  const QuoteSection({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Row(children: [
        VerticalDivider(
          width: width * 0.01,
          thickness: width * 0.01,
        ),
        Container(
            padding: EdgeInsets.only(left: width * 0.05),
            width: 313,
            height: 192,
            child: const Text(
              "A budget doesn't limit your freedom;\nit gives you freedom",
              style: TextStyle(
                  color: Color(0xffC9C9C9),
                  fontSize: 32,
                  height: 1.5,
                  fontWeight: FontWeight.bold),
            ))
      ]),
    );
  }
}
