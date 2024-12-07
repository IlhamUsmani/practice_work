import 'package:flutter/material.dart';
import 'package:practice_work/core/constants/string_constants.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String? selectedGender;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedGender,
      icon: const Icon(Icons.arrow_drop_down),
      items: const [
        DropdownMenuItem<String>(
          value: male,
          child: Text(male),
        ),
        DropdownMenuItem<String>(
          value: female,
          child: Text(female),
        ),
      ],
      onChanged: (String? value) {
        setState(() {
          selectedGender = value;
        });
      },
    );
  }
}
