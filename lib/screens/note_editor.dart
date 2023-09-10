import 'dart:math';
import 'package:intl/intl.dart';
import 'package:firenote/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteEditorScreen extends StatefulWidget {
  const NoteEditorScreen({super.key});

  @override
  State<NoteEditorScreen> createState() => _NoteEditorScreenState();
}

class _NoteEditorScreenState extends State<NoteEditorScreen> {
  int colorId = Random().nextInt(AppStyle.cardsColors.length);
  String date =
      DateFormat('yyyy-MM-dd kk:mm').format(DateTime.now()).toString();

  TextEditingController _titleController = TextEditingController();
  TextEditingController _mainTitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.cardsColors[colorId],
      appBar: AppBar(
        backgroundColor: AppStyle.cardsColors[colorId],
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Add New Note",
          // style: GoogleFonts.roboto(color: Colors.black),
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Note title'),
                  style: AppStyle.mainTitle,
                ),
                const SizedBox(height: 8.0),
                Text(
                  date,
                  style: AppStyle.dateTitle,
                ),
                const SizedBox(height: 28.0),
                TextField(
                  controller: _mainTitle,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Note Content'),
                  style: AppStyle.mainContent,
                ),
              ])),
    );
  }
}
