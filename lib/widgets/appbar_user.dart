import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarUser extends StatelessWidget {
  const AppBarUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color myColor = const Color(0xFF0247E1);

    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: myColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/arrow-left.svg',
                  // ignore: deprecated_member_use
                  color: Colors.white,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              const SizedBox(height: 45.0),
              const Padding(
                padding: EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  'Juan Carlos Canto Uc',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/generic-man.jpg'),
          ),
        ],
      ),
    );
  }
}
