
import 'package:flutter/material.dart';

class ProgresssCard extends StatelessWidget {
  const ProgresssCard({
    Key? key,
    required this.title,
    required this.status,
  }) : super(key: key);
  final String title;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            CircularProgressIndicator(
              value: 0.75,
              strokeWidth: 5,
              backgroundColor: Colors.grey.shade300,
            ),
            Center(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(status,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.grey))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
