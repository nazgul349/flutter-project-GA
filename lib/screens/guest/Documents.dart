/*import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DocScreen extends StatefulWidget {
  @override
  State<DocScreen> createState() => _DocScreenState();
}

class _DocScreenState extends State<DocScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('flutterproject').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs
              .map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;
                return Material(
                    child: ListTile(
                  title: Text(data['Name ']),
                  subtitle: Text(data['price'].toString()),
                )); // ListTile // Material
              })
              .toList()
              .cast(),
        ); // Listview
      },
    );
  }
}
*/