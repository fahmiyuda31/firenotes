import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firenote/style/app_style.dart';
import 'package:flutter/material.dart';

class NoteReadrScreen extends StatefulWidget {
  const NoteReadrScreen(this.document, {Key? key}) : super(key: key);
  final QueryDocumentSnapshot document;
  @override
  State<NoteReadrScreen> createState() => _NoteReadrScreenState();
}

class _NoteReadrScreenState extends State<NoteReadrScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.cardsColors[widget.document['color_id']],
      appBar: AppBar(
        backgroundColor: AppStyle.cardsColors[widget.document['color_id']],
        elevation: 0.0,
      ),
    );
  }
}
