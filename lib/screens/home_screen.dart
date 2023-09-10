import 'package:firenote/style/app_style.dart';
import 'package:firenote/widgets/notes_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class HomeScreen extends StatefulWidget {
  final String documentId;

  const HomeScreen({super.key, required this.documentId});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          "Fire Notes",
        ),
        centerTitle: true,
        backgroundColor: AppStyle.mainColor,
      ),
      body: SafeArea(
          child: FutureBuilder(
        future: FirebaseFirestore.instance
            .collection('Notes') // 👈 Your collection name here
            .get(),
        builder: (_, snapshot) {
          if (snapshot.hasError) return Text('Error = ${snapshot.error}');
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasData) {
            return GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: snapshot.data!.docs
                    .map((document) => noteCard(() {}, document))
                    .toList());
          }
          return const Text(
            'No Data',
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
          );
        },
      )),
    );
  }
}
