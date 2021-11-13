import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:alokito_new/models/chat/chat.dart';

abstract class BaseChatService {
  Stream<List<Chat>> streamMessage({required String chatId});

  Future<bool> addMessage({required String message, required String senderId, required String receiverId});
}

class ChatService implements BaseChatService {
  ChatService({
    required this.firestore,
  });

  FirebaseFirestore firestore;

  @override
  Stream<List<Chat>> streamMessage({required String chatId}) {
    print('ChatService Called');

    return firestore
        .collection('chats')
        .doc(chatId)
        .collection('%1%')
        .orderBy('createdAt', descending: true)
        .limit(25)
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      final List<Chat> retVal = [];
      querySnapshot.docs.forEach((doc) {
        print('Inside Loop');
        print(Chat.fromJson(doc.data()));

        retVal.add(Chat.fromJson(doc.data()));
      });
      return retVal;
    });
  }

  @override
  Future<bool> addMessage({
    required String message,
    required String senderId,
    required String receiverId,
  }) {
    // TODO: implement addMessage
    throw UnimplementedError();
  }
}
