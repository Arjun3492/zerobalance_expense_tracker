import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.2,
      leadingWidth: 62,
      leading: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(left: 6),
          child: ClipOval(
            child: Image.asset(
              'assets/icons/profile.jpeg',
              fit: BoxFit.cover,
            ),
          )),
      titleSpacing: 4,
      backgroundColor: Colors.white,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Welcome Back,",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff525251)),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "Arjun Kohli",
            style: TextStyle(
                wordSpacing: 2,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.category_outlined,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
