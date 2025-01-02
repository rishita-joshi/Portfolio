// import 'package:dialog_flowtter/dialog_flowtter.dart';
// import 'package:flutter/material.dart';
// import 'dart:html' as html;

// class AiAssitancePage extends StatefulWidget {
//   const AiAssitancePage({super.key});

//   @override
//   State<AiAssitancePage> createState() => _AiAssitancePageState();
// }

// class _AiAssitancePageState extends State<AiAssitancePage> {
//   late DialogFlowtter dialogFlowtter;
//   final TextEditingController textEditingController = TextEditingController();
//   List<Map<String, dynamic>> messages = [];
//   FocusNode focusNode = FocusNode();

//   void syncInputFocus(TextEditingController controller) {
//     final element = html.document.activeElement;
//     if (element != null && element is html.InputElement) {
//       element.focus();
//     }
//   }

//   @override
//   void initState() {
//     DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       body: Column(
//         children: [
//           Expanded(child: MessagesScreen(messages: messages)),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
//             color: Colors.deepPurple,
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     focusNode: focusNode,
//                     controller: textEditingController,
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//                 IconButton(
//                     onPressed: () {
//                       sendMessage(textEditingController.text);
//                       textEditingController.clear();
//                     },
//                     icon: Icon(Icons.send))
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   sendMessage(String text) async {
//     if (text.isEmpty) {
//       print('Message is empty');
//     } else {
//       setState(() {
//         addMessage(Message(text: DialogText(text: [text])), true);
//       });

//       DetectIntentResponse response = await dialogFlowtter.detectIntent(
//           queryInput: QueryInput(text: TextInput(text: text)));
//       if (response.message == null) return;
//       setState(() {
//         addMessage(response.message!);
//       });
//     }
//   }

//   addMessage(Message message, [bool isUserMessage = false]) {
//     messages.add({'message': message, 'isUserMessage': isUserMessage});
//   }
// }

// class MessagesScreen extends StatefulWidget {
//   final List messages;
//   const MessagesScreen({Key? key, required this.messages}) : super(key: key);

//   @override
//   _MessagesScreenState createState() => _MessagesScreenState();
// }

// class _MessagesScreenState extends State<MessagesScreen> {
//   @override
//   Widget build(BuildContext context) {
//     var w = MediaQuery.of(context).size.width;
//     return ListView.separated(
//         itemBuilder: (context, index) {
//           return Container(
//             margin: EdgeInsets.all(10),
//             child: Row(
//               mainAxisAlignment: widget.messages[index]['isUserMessage']
//                   ? MainAxisAlignment.end
//                   : MainAxisAlignment.start,
//               children: [
//                 Container(
//                     padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(
//                             20,
//                           ),
//                           topRight: Radius.circular(20),
//                           bottomRight: Radius.circular(
//                               widget.messages[index]['isUserMessage'] ? 0 : 20),
//                           topLeft: Radius.circular(
//                               widget.messages[index]['isUserMessage'] ? 20 : 0),
//                         ),
//                         color: widget.messages[index]['isUserMessage']
//                             ? Colors.grey.shade800
//                             : Colors.grey.shade900.withOpacity(0.8)),
//                     constraints: BoxConstraints(maxWidth: w * 2 / 3),
//                     child: Text(
//                       widget.messages[index]['message'].text.text[0],
//                       style: TextStyle(color: Colors.white),
//                     )),
//               ],
//             ),
//           );
//         },
//         separatorBuilder: (_, i) => Padding(padding: EdgeInsets.only(top: 10)),
//         itemCount: widget.messages.length);
//   }
// }
