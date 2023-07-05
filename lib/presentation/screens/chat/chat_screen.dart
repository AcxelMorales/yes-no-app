import 'package:flutter/material.dart';

import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi amor ♡'),
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://www.iwmbuzz.com/wp-content/uploads/2021/07/trending-black-widow-star-scarlett-johanssons-red-hair-alarmed-many-to-try-it-out-see-viral-pics-3.jpeg'),
          ),
        ),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return (index % 2 == 0)
                ? const HerMessageBubble()
                : const MyMessageBubble();
              }),
            ),
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
