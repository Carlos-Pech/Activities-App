import 'package:flutter/material.dart';

class UserMessage extends StatelessWidget {
  const UserMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Motivacion del día:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          Text(
            "Lorem ipsum dolor sit amet consectetur adipiscing elit cum, himenaeos eros sapien congue pellentesque fames ac dignissim lacinia, nunc porttitor mus ridiculus tristique in neque. Vitae interdum metus parturient sem aliquam egestas auctor, pulvinar lacus felis dui luctus a fusce, semper accumsan gravida faucibus sapien vel. Aliquet rhoncus cubilia eros pulvinar est mi quisque, proin in egestas tristique integer cursus interdum rutrum, dapibus penatibus tempus suspendisse erat parturient.",
            style: TextStyle(
              fontSize: 12.0,
            ),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
