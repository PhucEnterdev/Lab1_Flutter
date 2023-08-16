import 'package:flutter/material.dart';

class TranslatorsCard extends StatelessWidget {
  const TranslatorsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Discover',
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Icon(
                Icons.brightness_1,
                color: Colors.pink,
              ),
            ],
          ),
        ),

        // Card Author
        buildAuthorCard(),
      ],
    );
  }

  Container buildAuthorCard() {
    return Container(
      width: 350,
      height: 500,
      constraints: const BoxConstraints.expand(
        width: 350,
        height: 500,
      ),
      child: Column(
        children: [
          Card(
            elevation: 2,
            child: Stack(
              children: [
                Container(
                  constraints: const BoxConstraints.expand(
                    width: 500,
                    height: 350,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/model.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
