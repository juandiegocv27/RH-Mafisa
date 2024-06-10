import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpleadosRecord extends FirestoreRecord {
  EmpleadosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  // "cedula" field.
  String? _cedula;
  String get cedula => _cedula ?? '';
  bool hasCedula() => _cedula != null;

  // "nacionalidad" field.
  String? _nacionalidad;
  String get nacionalidad => _nacionalidad ?? '';
  bool hasNacionalidad() => _nacionalidad != null;

  // "genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  bool hasGenero() => _genero != null;

  // "estado_civil" field.
  String? _estadoCivil;
  String get estadoCivil => _estadoCivil ?? '';
  bool hasEstadoCivil() => _estadoCivil != null;

  // "domicilio" field.
  String? _domicilio;
  String get domicilio => _domicilio ?? '';
  bool hasDomicilio() => _domicilio != null;

  // "fecha_ingreso" field.
  DateTime? _fechaIngreso;
  DateTime? get fechaIngreso => _fechaIngreso;
  bool hasFechaIngreso() => _fechaIngreso != null;

  // "salario" field.
  double? _salario;
  double get salario => _salario ?? 0.0;
  bool hasSalario() => _salario != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "horario" field.
  String? _horario;
  String get horario => _horario ?? '';
  bool hasHorario() => _horario != null;

  // "motivo" field.
  String? _motivo;
  String get motivo => _motivo ?? '';
  bool hasMotivo() => _motivo != null;

  // "id_departamento" field.
  DocumentReference? _idDepartamento;
  DocumentReference? get idDepartamento => _idDepartamento;
  bool hasIdDepartamento() => _idDepartamento != null;

  // "id_puesto" field.
  DocumentReference? _idPuesto;
  DocumentReference? get idPuesto => _idPuesto;
  bool hasIdPuesto() => _idPuesto != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "fecha_nacimiento" field.
  DateTime? _fechaNacimiento;
  DateTime? get fechaNacimiento => _fechaNacimiento;
  bool hasFechaNacimiento() => _fechaNacimiento != null;

  // "Colaborador" field.
  bool? _colaborador;
  bool get colaborador => _colaborador ?? false;
  bool hasColaborador() => _colaborador != null;

  // "Jefatura" field.
  bool? _jefatura;
  bool get jefatura => _jefatura ?? false;
  bool hasJefatura() => _jefatura != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _correo = snapshotData['correo'] as String?;
    _cedula = snapshotData['cedula'] as String?;
    _nacionalidad = snapshotData['nacionalidad'] as String?;
    _genero = snapshotData['genero'] as String?;
    _estadoCivil = snapshotData['estado_civil'] as String?;
    _domicilio = snapshotData['domicilio'] as String?;
    _fechaIngreso = snapshotData['fecha_ingreso'] as DateTime?;
    _salario = castToType<double>(snapshotData['salario']);
    _telefono = snapshotData['telefono'] as String?;
    _estado = snapshotData['estado'] as String?;
    _horario = snapshotData['horario'] as String?;
    _motivo = snapshotData['motivo'] as String?;
    _idDepartamento = snapshotData['id_departamento'] as DocumentReference?;
    _idPuesto = snapshotData['id_puesto'] as DocumentReference?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _password = snapshotData['Password'] as String?;
    _fechaNacimiento = snapshotData['fecha_nacimiento'] as DateTime?;
    _colaborador = snapshotData['Colaborador'] as bool?;
    _jefatura = snapshotData['Jefatura'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('empleados');

  static Stream<EmpleadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmpleadosRecord.fromSnapshot(s));

  static Future<EmpleadosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmpleadosRecord.fromSnapshot(s));

  static EmpleadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmpleadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmpleadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmpleadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmpleadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmpleadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmpleadosRecordData({
  String? nombre,
  String? correo,
  String? cedula,
  String? nacionalidad,
  String? genero,
  String? estadoCivil,
  String? domicilio,
  DateTime? fechaIngreso,
  double? salario,
  String? telefono,
  String? estado,
  String? horario,
  String? motivo,
  DocumentReference? idDepartamento,
  DocumentReference? idPuesto,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? password,
  DateTime? fechaNacimiento,
  bool? colaborador,
  bool? jefatura,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'correo': correo,
      'cedula': cedula,
      'nacionalidad': nacionalidad,
      'genero': genero,
      'estado_civil': estadoCivil,
      'domicilio': domicilio,
      'fecha_ingreso': fechaIngreso,
      'salario': salario,
      'telefono': telefono,
      'estado': estado,
      'horario': horario,
      'motivo': motivo,
      'id_departamento': idDepartamento,
      'id_puesto': idPuesto,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'Password': password,
      'fecha_nacimiento': fechaNacimiento,
      'Colaborador': colaborador,
      'Jefatura': jefatura,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmpleadosRecordDocumentEquality implements Equality<EmpleadosRecord> {
  const EmpleadosRecordDocumentEquality();

  @override
  bool equals(EmpleadosRecord? e1, EmpleadosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.correo == e2?.correo &&
        e1?.cedula == e2?.cedula &&
        e1?.nacionalidad == e2?.nacionalidad &&
        e1?.genero == e2?.genero &&
        e1?.estadoCivil == e2?.estadoCivil &&
        e1?.domicilio == e2?.domicilio &&
        e1?.fechaIngreso == e2?.fechaIngreso &&
        e1?.salario == e2?.salario &&
        e1?.telefono == e2?.telefono &&
        e1?.estado == e2?.estado &&
        e1?.horario == e2?.horario &&
        e1?.motivo == e2?.motivo &&
        e1?.idDepartamento == e2?.idDepartamento &&
        e1?.idPuesto == e2?.idPuesto &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.password == e2?.password &&
        e1?.fechaNacimiento == e2?.fechaNacimiento &&
        e1?.colaborador == e2?.colaborador &&
        e1?.jefatura == e2?.jefatura;
  }

  @override
  int hash(EmpleadosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.correo,
        e?.cedula,
        e?.nacionalidad,
        e?.genero,
        e?.estadoCivil,
        e?.domicilio,
        e?.fechaIngreso,
        e?.salario,
        e?.telefono,
        e?.estado,
        e?.horario,
        e?.motivo,
        e?.idDepartamento,
        e?.idPuesto,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.password,
        e?.fechaNacimiento,
        e?.colaborador,
        e?.jefatura
      ]);

  @override
  bool isValidKey(Object? o) => o is EmpleadosRecord;
}
