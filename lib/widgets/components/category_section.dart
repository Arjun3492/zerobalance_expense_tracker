import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  CategorySection({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;
  final List icon = [
    {
      'title': 'Food',
      'icon': Icons.fastfood,
      'color': Colors.orange,
    },
    {
      'title': 'Pets',
      'icon': Icons.pets,
      'color': Colors.pink,
    },
    {
      'title': 'Shopping',
      'icon': Icons.shopping_bag,
      'color': Colors.purple,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Categories', style: TextStyle(fontSize: width * 0.06)),
        SizedBox(height: height * 0.015),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(right: width * 0.05),
                child: CircleAvatar(
                  radius: 41,
                  backgroundColor: const Color(0xffEEEEEE),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Icon(
                      icon[index]['icon'],
                      color: icon[index]['color'],
                      size: 30,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
