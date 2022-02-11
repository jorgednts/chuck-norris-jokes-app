import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String? title;

  const CustomAppBarWidget({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Image.asset('assets/images/logo_home.png'),
          ),
          Text(title ?? '', style: const TextStyle(fontSize: 16),),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
