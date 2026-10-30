import 'package:flutter/material.dart';
import 'package:rertail/features/home/widgets/counter.dart';

class ListTileCart extends StatefulWidget {
  const ListTileCart({super.key, required this.deals, required this.index});

  final List<dynamic> deals;
  final int index;

  @override
  State<ListTileCart> createState() => _ListTileCartState();
}

class _ListTileCartState extends State<ListTileCart> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        color: Colors.red,
        child: Icon(Icons.delete, color: Colors.white),
      ),
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          spacing: 18, // Add spacing between the children = 18
          children: [
            Expanded(child: Image.asset(widget.deals[widget.index]["image"])),

            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.deals[widget.index]["name"],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff7F4E1D),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Counter(),
                ],
              ),
            ),

            Text(
              "\$${widget.deals[widget.index]["price"]}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff7F4E1D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
