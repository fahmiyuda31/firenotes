import 'package:firenote/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';
// Import the firebase_app_check plugin
// import 'package:firebase_app_check/firebase_app_check.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

// class GetNotes extends StatelessWidget {
//   const GetNotes({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Fire Notes")),
//       body: Center(
//           child: FutureBuilder<QuerySnapshot>(
//         future: FirebaseFirestore.instance
//             .collection('Notes') // 👈 Your collection name here
//             .get(),
//         builder: (_, snapshot) {
//           if (snapshot.hasError) return Text('Error = ${snapshot.error}');
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Text("Loading");
//           }
//           return ListView(
//               children: snapshot.data!.docs.map((DocumentSnapshot document) {
//             Map<String, dynamic> data =
//                 document.data()! as Map<String, dynamic>;
//             return ListTile(
//               title: Text(data['note_title']), // 👈 Your valid data here
//             );
//           }).toList());
//         },
//       )),
//     );
//   }
// }
