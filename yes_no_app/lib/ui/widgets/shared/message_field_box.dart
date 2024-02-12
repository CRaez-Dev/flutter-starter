import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {

  final ValueChanged<String> onHandlePress;

  const MessageFieldBox({super.key, required this.onHandlePress});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular((40)));

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "??"',
        filled: true,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.value.text;
            onHandlePress(textValue);
            textController.clear();
          focusNode.requestFocus();
          },
        ));

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,      
      onFieldSubmitted: (value) {
        onHandlePress(value);
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
