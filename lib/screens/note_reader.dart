import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firenote/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteReadrScreen extends StatefulWidget {
  const NoteReadrScreen(this.document, {Key? key}) : super(key: key);
  final QueryDocumentSnapshot document;
  @override
  State<NoteReadrScreen> createState() => _NoteReadrScreenState();
}

class _NoteReadrScreenState extends State<NoteReadrScreen> {
  @override
  Widget build(BuildContext context) {
    int colorId = widget.document['color_id'];
    String noteId = widget.document['id'];

    return Scaffold(
      backgroundColor: AppStyle.cardsColors[colorId],
      appBar: AppBar(
        backgroundColor: AppStyle.cardsColors[colorId],
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: Text(
          widget.document['note_title'],
          style: GoogleFonts.roboto(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          ConfirmDelete(noteID: noteId),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.document['creation_date'],
              style: AppStyle.dateTitle,
            ),
            const SizedBox(
              height: 28,
            ),
            Text(
              widget.document['note_content'],
              style: AppStyle.mainContent,
            ),
          ],
        ),
      ),
    );
  }
}

class ConfirmDelete extends StatelessWidget {
  const ConfirmDelete({Key? key, required this.noteID}) : super(key: key);
  final String noteID;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Delete this note'),
          content: const Text('This note will be permanently deleted'),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey)),
            ),
            ElevatedButton(
              onPressed: () => {
                // FirebaseFirestore.instance
                //     .collection('Notes')
                //     .doc(noteID)
                //     .delete(),
                Navigator.pop(context, 'OK')
                //             FirebaseFirestore.instance.collection("chats").document("ROOM_1")
                // .collection("messages").document(snapshot.data.documents[index]["id"])
                // .delete();
              },
              child: const Text('OK'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
            ),
          ],
        ),
      ),
      child: const Icon(
        Icons.delete,
        color: Colors.red,
        size: 24.0,
      ),
    );
  }
}
