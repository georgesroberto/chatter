import 'package:cloud_firestore/cloud_firestore.dart';

class ChatService {
  // Get instance of Firestore
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Get user stream
  /// List<Map<String,dynamic> =
  /// {
  ///  'email': 'a@mail.c,
  /// 'id' : ..
  /// }
  ///
  Stream<List<Map<String, dynamic>>> getUsersStream() {
    return _firestore.collection('Users').snapshots().map((snapsot) {
      return snapsot.docs.map((doc) {
        // Iterate each user
        final user = doc.data();

        // Return user
        return user;
      }).toList();
    });
  }

  // Send Messages

  // Get Messages
}
