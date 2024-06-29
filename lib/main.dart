import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buatKotak('assets/1.jpg', 'Image 1'),
                buatKotak('assets/2.jpg', 'Image 2'),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buatKotak('assets/3.jpg', 'Image 3'),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    buatKotak('assets/4.jpg', 'Image 4'),
                    buatKotak('assets/5.jpg', 'Image 5'),
                    buatKotak('assets/6.jpg', 'Image 6'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  ));
}

Widget buatKotak(String imagePath, String imageName) {
  return GestureDetector(
    onTap: () {
      print('Tapped on $imageName');
    },
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          height: 100,
          width: 100,
          margin: const EdgeInsets.all(10),
        ),
        Text(imageName),
      ],
    ),
  );
}
