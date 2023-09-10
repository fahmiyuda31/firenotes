import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firenote/style/app_style.dart';
import 'package:flutter/material.dart';

Widget noteCard(Function()? OnTap, QueryDocumentSnapshot document) {
  return GestureDetector(
    onTap: OnTap,
    child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            // color: AppStyle.accentColor,
            color: AppStyle.cardsColors[document['color_id']],
            borderRadius: BorderRadius.circular(8.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(document['note_title'], style: AppStyle.mainTitle),
            Text(document['creation_date'], style: AppStyle.dateTitle),
            const SizedBox(height: 20),
            Expanded(
              child: Text(
                document['note_content'],
                style: AppStyle.mainContent,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        )),
  );
}
