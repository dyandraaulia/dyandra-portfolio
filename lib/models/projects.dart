import 'package:cloud_firestore/cloud_firestore.dart';

class Project {
  final int id;
  final String title;
  final String description;
  final List<String> galleries;
  final String url;
  final DocumentReference? reference;

  Project.fromMap(var map, {this.reference})
      : assert(map['id'] != null),
        assert(map['title'] != null),
        assert(map['description'] != null),
        assert(map['galleries'] != null),
        assert(map['url'] != null),
        id = map['id'],
        title = map['title'],
        description = map['description'],
        galleries = map['galleries'],
        url = map['url'];

  Project.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data() as Map<String, dynamic>,
            reference: snapshot.reference);

  @override
  String toString() => "Project<$int:$title:$description:$galleries:$url>";
}
