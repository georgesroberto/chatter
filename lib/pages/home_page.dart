// import 'dart:convert';

// import 'package:chatter/components/my_drawer.dart';
// import 'package:chatter/components/user_tile.dart';
// import 'package:chatter/pages/chat_page.dart';
// import 'package:chatter/services/chat/chat_service.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   // Get Services (Chat, Auth)
//   final ChatService _chatService = ChatService();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       drawer: const MyDrawer(),
//       body: _buildUserList(),
//     );
//   }

//   Widget _buildUserList() {
//     return StreamBuilder(
//       stream: _chatService.getUsersStream(),
//       builder: (context, snapshot) {
//         // Error state
//         if (snapshot.hasError) {
//           return const Text('Error!');
//         }

//         // Loading state
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Text('Loading...');
//         }

//         // Success state
//         // Return Lit View
//         return ListView(
//           children:
//               snapshot.data!
//               .map<Widget>((userData) => _buildUserListItem(userData, context))
//               .toList(),
//         );
//       },
//     );
//   }

//   // Build Individual List Tile for User 
//   Widget -buildUserListItem(
//     Map<String, dynamic> userData, BuildContext context){
//     //  Display all users except current user
//     return UserTile(
//       text: userData["email"],
//       onTap: (){
//         // Chat with tapped user
//         Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatPage(
//           receiverEmail: userData["email"]
//         )),
//         );
//       },
//     );
//   }
// }
