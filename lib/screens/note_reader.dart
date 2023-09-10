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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.document['note_title'],
              style: AppStyle.mainTitle,
            ),
            Text(
              widget.document['creation_date'],
              style: AppStyle.dateTitle,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.document['note_content'],
              style: AppStyle.mainContent,
            )
          ],
        ),
      ),
      // body: const Padding(
      //   padding: EdgeInsets.all(16.0),
      //   // child: Column(
      //   //   children: [Text(widget!.document!['note_title'])],
      //   // ),
      // ),
    );
  }
}
