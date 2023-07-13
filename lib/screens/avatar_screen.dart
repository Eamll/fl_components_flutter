import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.green[900],
                child: const Text('SL'),
              ),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://abrecht-group.com/wp-content/uploads/2018/11/leeblastr.jpg'),
        ),
      ),
    );
  }
}
