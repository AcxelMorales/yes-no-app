import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );

    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'End your message with a "?"',
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          filled: true,
          suffixIcon: IconButton(
            onPressed: () {
              final textValue = textController.value.text;
              textController.clear();
            }, 
            icon: const Icon(Icons.send_and_archive_outlined)
          ),
        ),
        controller: textController,
        focusNode: focusNode,
        onFieldSubmitted: (value) {
          textController.clear();
          focusNode.requestFocus();
        },
        onTapOutside: (event) {
          focusNode.unfocus();
        },
      ),
    );
  }
}
