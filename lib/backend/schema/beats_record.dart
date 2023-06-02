import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BeatsRecord extends FirestoreRecord {
  BeatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "bpm" field.
  int? _bpm;
  int get bpm => _bpm ?? 0;
  bool hasBpm() => _bpm != null;

  // "escala" field.
  String? _escala;
  String get escala => _escala ?? '';
  bool hasEscala() => _escala != null;

  // "prod" field.
  String? _prod;
  String get prod => _prod ?? '';
  bool hasProd() => _prod != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _bpm = snapshotData['bpm'] as int?;
    _escala = snapshotData['escala'] as String?;
    _prod = snapshotData['prod'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('beats');

  static Stream<BeatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BeatsRecord.fromSnapshot(s));

  static Future<BeatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BeatsRecord.fromSnapshot(s));

  static BeatsRecord fromSnapshot(DocumentSnapshot snapshot) => BeatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BeatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BeatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BeatsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createBeatsRecordData({
  String? titulo,
  int? bpm,
  String? escala,
  String? prod,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'bpm': bpm,
      'escala': escala,
      'prod': prod,
    }.withoutNulls,
  );

  return firestoreData;
}
