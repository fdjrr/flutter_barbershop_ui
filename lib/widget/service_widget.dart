// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ServiceWidget extends StatefulWidget {
  const ServiceWidget({
    Key? key,
    required this.name,
    required this.price,
    required this.tapHandler,
    required this.isSelected,
  }) : super(key: key);

  final String name;
  final String price;
  final void Function(String) tapHandler;
  final bool isSelected;

  @override
  State<ServiceWidget> createState() => _ServiceWidgetState();
}

class _ServiceWidgetState extends State<ServiceWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.tapHandler(widget.name),
      child: Chip(
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.name,
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 15.0,
                color: widget.isSelected ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              'Rp. ${widget.price}',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 13.0,
                color: widget.isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: widget.isSelected
            ? Colors.black.withOpacity(0.8)
            : Colors.grey.withOpacity(0.2),
      ),
    );
  }
}
