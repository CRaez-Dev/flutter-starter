import 'package:flutter/material.dart';
import 'package:yes_no_app/ui/widgets/chat/reciver_message_bubble.dart';
import 'package:yes_no_app/ui/widgets/chat/sender_message_bubble.dart';
import 'package:yes_no_app/ui/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.cdninstagram.com/v/t51.2885-15/327955587_200906459147048_5728246743649521514_n.webp?stp=dst-jpg_e35_p720x720&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyIn0&_nc_ht=scontent.cdninstagram.com&_nc_cat=108&_nc_ohc=qHKmY5ge75kAX-XFZFz&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzAyNTA2MDQwNDQzMTI2MzY3Mw%3D%3D.2-ccb7-5&oh=00_AfAh8i-aIaZK3-60vgr0WPFUR6bKoHIVejHOgsy4Gtkw8Q&oe=65CD85A1&_nc_sid=10d13b'),
          ),
        ),
        title: const Text('My Love'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                return  (index % 2 == 0) ? const ReciverMessageBubble() : const SenderMessageBubble();
              },),
            ),
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
