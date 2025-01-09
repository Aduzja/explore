import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Image.asset(
                  'assets/icons/burger_icon.png',
                  width: 33,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/icons/logo.png',
          height: 38,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Image.asset(
                  'assets/icons/favorite_icon.png',
                  width: 33,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset(
                  'assets/icons/search_icon.png',
                  width: 33,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
