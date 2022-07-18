import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUserName extends StatelessWidget {
  // call this widget when ive got a document id, then got the first name
  final String documentId;

  GetUserName({required this.documentId}); // grab the document ID

  @override
  Widget build(BuildContext context) {
    //get the collection
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Text('${data['first name']}' +
              ' ' +
              '${data['last name']},' +
              ' ' +
              '${data['age']}' +
              ' years old'); // grabbing the first name, last name, ...
        }
        return Text('Loading...'); // connection not done yet return loading
      }),
    );
  }
}
