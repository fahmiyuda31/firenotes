import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firenote/style/app_style.dart';
import 'package:flutter/material.dart';

Widget noteCard({Function()? onTap, QueryDocumentSnapshot? doc}) {
  print(doc);
  return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: AppStyle.accentColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "NOtes",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ));
}
