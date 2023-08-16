import 'package:flutter/material.dart';

class DeveloperCard extends StatelessWidget {
  const DeveloperCard({Key? key}) : super(key: key);

  final String fullName = 'Nguyen Trong Phuc';
  final String job = 'Developer';
  final String intro = 'I am extremely love coding';
  final String intro2 = 'and working with the computer.';
  final String nickName = 'Enterdev';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10,
        child: Container(
          padding: const EdgeInsets.all(8),
          constraints: const BoxConstraints.expand(
            width: 350,
            height: 450,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/enter.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 20,
                child: Text(
                  fullName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Text(
                  job,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                bottom: 50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    intro,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 32,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    intro2,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    nickName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
