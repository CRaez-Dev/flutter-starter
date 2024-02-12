import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: "Hello", fromWho: FromWho.reciver),
    Message(text: "Are you ready to go to the park?", fromWho: FromWho.reciver),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isNotEmpty) {
      final newMessage = Message(text: text, fromWho: FromWho.reciver);
      messageList.add(newMessage);

      notifyListeners();
      moveScrollToBottom();

      if (text.endsWith('?')) senderReply();
    }
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.decelerate);
  }

  Future<void> senderReply() async {
    final senderMessage = await getYesNoAnswer.getAnswer();
    messageList.add(senderMessage);
    notifyListeners();
    moveScrollToBottom();
  }
}
