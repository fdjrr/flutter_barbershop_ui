// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BabermanWidget extends StatefulWidget {
  const BabermanWidget({
    Key? key,
    required this.imgPath,
    required this.name,
    required this.tapHandler,
    required this.isSelected,
  }) : super(key: key);

  final String imgPath;
  final String name;
  final void Function(String) tapHandler;
  final bool isSelected;

  @override
  State<BabermanWidget> createState() => _BabermanWidgetState();
}

class _BabermanWidgetState extends State<BabermanWidget> {
  Color getSelectedBarber() {
    if (widget.isSelected) {
      return Colors.black.withOpacity(0.3);
    } else {
      return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                image: DecorationImage(
                  image: AssetImage(widget.imgPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                widget.tapHandler(widget.name);
              },
              child: Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: getSelectedBarber(),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 7.0,
        ),
        Text(
          widget.name,
          style: const TextStyle(
            fontFamily: 'FiraSans',
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }
}
