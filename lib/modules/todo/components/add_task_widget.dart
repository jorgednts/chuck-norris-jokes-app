import 'package:flutter/material.dart';

class InputTaskWidget extends StatelessWidget {
  final String labelText;
  final String textButton;
  final TextEditingController textController;
  final Function()? onPressed;

  const InputTaskWidget(
      {Key? key,
      required this.textController,
      this.onPressed,
      required this.labelText,
      required this.textButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                labelText: labelText,
                labelStyle:
                    const TextStyle(fontSize: 12, color: Color(0xFFC1007E)),
              ),
            ),
          ),
          Container(
            width: 74,
            height: 37,
            color: const Color(0xFFC1007E),
            child: TextButton(
                onPressed: onPressed,
                child: Text(
                  textButton,
                  style: const TextStyle(fontSize: 12),
                ),
            style: TextButton.styleFrom(primary: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
