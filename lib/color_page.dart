import 'package:flutter/material.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({
    required this.color,
    super.key,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            size: 32,
          ),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: color,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      color.withOpacity(0.8),
                      color,
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Text(
              '#${color.value.toRadixString(16)}'.toUpperCase(),
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
