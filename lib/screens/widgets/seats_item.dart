import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  final Map<String, dynamic> seat;

  const SeatItem({
    required this.seat,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color:  Colors.white
      ),
      child: Text(seat["name"])
    );
  }
}