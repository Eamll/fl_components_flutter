import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.phone_android,
              color: AppTheme.primary,
            ),
            title: Text('Soy un titulo'),
            subtitle:
                Text('Dolor ut elit aute aute proident eiusmod adipisicing.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Cancel'),
                ),
                TextButton(onPressed: () {}, child: Text('Ok'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
