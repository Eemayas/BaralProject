import 'package:flutter/material.dart';

class list_children_Elements extends StatelessWidget {
  const list_children_Elements({
    Key? key,
    required this.OnTAp,
    required this.PhotoAddress,
    required this.MainText,
    required this.SecondatText,
  }) : super(key: key);

  final Function()? OnTAp;
  final Widget PhotoAddress;
  final String MainText;
  final String SecondatText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              //color: Colors.orange,
              ),
          child: GestureDetector(
            onTap: OnTAp,
            child: Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  color: Colors.redAccent,
                ),
                child: PhotoAddress),
          ),
        ),
        Text(
          MainText,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          SecondatText,
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }
}
