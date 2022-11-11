import 'package:flutter/material.dart';

class services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(scrollDirection: Axis.vertical, children: [
      Column(children: [ServiceTabCardInfo()])
    ]));
  }
}

class ServiceTabCardInfo extends StatefulWidget {
  const ServiceTabCardInfo({super.key});

  @override
  State<ServiceTabCardInfo> createState() => _ServiceTabCardInfoState();
}

class _ServiceTabCardInfoState extends State<ServiceTabCardInfo> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        setState(() => isSelected = !isSelected);
      },
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: isSelected ? Colors.lightBlue : Colors.transparent,
                borderRadius: BorderRadius.circular(15),
                border: isSelected
                    ? null
                    : Border.all(
                        color: Colors.grey,
                        width: 2,
                      )),
            width: 30,
            height: 30,
            child: isSelected ? Icon(Icons.check) : null,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Text(
                "Men Haircut",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(children: [
                Row(
                  children: [
                    Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                    Text(
                      "1hr",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Row(
                  children: [
                    Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                    Text(
                      "Mens only",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ])
            ]),
          ),
          Spacer(),
          Column(
            children: [
              Text(
                "Select Stylist",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("NRS:0", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }
}
