import 'package:flutter/material.dart';

class SeatItem extends StatefulWidget {
  final String selected;
  final Map<String, dynamic> seat;

  const SeatItem({
    required this.selected,
    required this.seat,
    super.key
  });

  @override
  State<SeatItem> createState() => SeatItemState();
}

class SeatItemState extends State<SeatItem> {

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        border: Border.all(
          color: widget.selected == widget.seat["name"] 
          ? Colors.deepOrangeAccent
          : Colors.transparent
        ),
        color: widget.seat["booked"] 
        ? Colors.grey 
        : Colors.white
      ),
      child: Text(widget.seat["name"])
    );
  }
}