import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
              name: 'Un paisaje verde',
              imageUrl:
                  'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000'),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://loschefchiflados.com/wp-content/uploads/2022/03/travel-landscape-01.jpg',
          ),
        ],
      ),
    );
  }
}
