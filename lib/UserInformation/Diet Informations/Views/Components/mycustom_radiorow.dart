import 'package:flutter/material.dart';

class CustomRowRadio extends StatelessWidget {
  final String value, groupValue,text,description;
  final void Function(String?)? onChanged;
  const CustomRowRadio(
      {super.key,
      required this.value,
      required this.groupValue,
      this.onChanged, required this.text, required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.white
                ),
              ),
              Text(
                description,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Radio(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            activeColor: Colors.green,
          ),
        ),
      ],
    );
  }
}
