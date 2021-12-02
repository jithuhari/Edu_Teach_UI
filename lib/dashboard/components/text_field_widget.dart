import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.grey.shade200,
            border: Border.all(color: Colors.grey.shade200)),
        child: TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey, letterSpacing: 3),
            hintText: 'Search Your Courses , Subjects',
          ),
        ),
      ),
    );
  }
}
