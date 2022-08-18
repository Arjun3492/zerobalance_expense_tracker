import 'package:flutter/material.dart';
import 'package:zerobalance_expense_calculator/widgets/shared/task_tile.dart';

class TaskSection extends StatelessWidget {
  TaskSection({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;
  final List task = [
    {
      'color': const Color(0xffF6EDD2),
      'icon': '🔑',
      'heading': 'Complete KYC',
      'number': '01',
    },
    {
      'color': const Color(0xffFBE8D8),
      'icon': '🍔',
      'heading': 'Create Category',
      'number': '02',
    },
    {
      'color': const Color(0xffFBEBCE),
      'icon': '🤑',
      'heading': 'Set limit to category',
      'number': '03',
    },
    {
      'color': const Color(0xffD3D6F1),
      'icon': '👨‍💻',
      'heading': 'Add apps to category',
      'number': '04',
    },
    {
      'color': const Color(0xffF7F0DC),
      'icon': '💰',
      'heading': 'Make one taxn',
      'number': '05',
    },
    {
      'color': const Color(0xffEEECE2),
      'icon': '💵',
      'heading': 'Make five taxn in each category',
      'number': '06',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Task', style: TextStyle(fontSize: width * 0.06)),
        SizedBox(height: height * 0.015),
        SizedBox(
          height: 166,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return TaskTile(
                color: task[index]['color'],
                icon: task[index]['icon'],
                heading: task[index]['heading'],
                width: width,
                height: height,
                number: task[index]['number'],
              );
            },
          ),
        ),
      ],
    );
  }
}
