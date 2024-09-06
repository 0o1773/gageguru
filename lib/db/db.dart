import 'package:cloud_firestore/cloud_firestore.dart';
import 'classes.dart';

Future<List<Mouse>> fetchMouse() async {
  var db = FirebaseFirestore.instance;
  List<Mouse> items = [];

  await db
      .collection("mouse")
      .withConverter<Mouse>(
          fromFirestore: (snapshot, _) => Mouse.fromJson(snapshot.data()!),
          toFirestore: (mouse, _) => mouse.toJson())
      .get()
      .then((event) {
    for (var doc in event.docs) {
      items.add(doc.data());
    }
  });

  return items;
}
