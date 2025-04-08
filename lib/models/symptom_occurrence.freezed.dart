// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symptom_occurrence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SymptomOccurrence {

 String get id; String get patientId; List<Symptom> get symptoms; String? get remarks; String? get diseaseOccurrenceId; bool get chat; DateTime get registeredDate; List<ProbableDisease> get probableDiseases;
/// Create a copy of SymptomOccurrence
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SymptomOccurrenceCopyWith<SymptomOccurrence> get copyWith => _$SymptomOccurrenceCopyWithImpl<SymptomOccurrence>(this as SymptomOccurrence, _$identity);

  /// Serializes this SymptomOccurrence to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SymptomOccurrence&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&const DeepCollectionEquality().equals(other.symptoms, symptoms)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.diseaseOccurrenceId, diseaseOccurrenceId) || other.diseaseOccurrenceId == diseaseOccurrenceId)&&(identical(other.chat, chat) || other.chat == chat)&&(identical(other.registeredDate, registeredDate) || other.registeredDate == registeredDate)&&const DeepCollectionEquality().equals(other.probableDiseases, probableDiseases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,patientId,const DeepCollectionEquality().hash(symptoms),remarks,diseaseOccurrenceId,chat,registeredDate,const DeepCollectionEquality().hash(probableDiseases));

@override
String toString() {
  return 'SymptomOccurrence(id: $id, patientId: $patientId, symptoms: $symptoms, remarks: $remarks, diseaseOccurrenceId: $diseaseOccurrenceId, chat: $chat, registeredDate: $registeredDate, probableDiseases: $probableDiseases)';
}


}

/// @nodoc
abstract mixin class $SymptomOccurrenceCopyWith<$Res>  {
  factory $SymptomOccurrenceCopyWith(SymptomOccurrence value, $Res Function(SymptomOccurrence) _then) = _$SymptomOccurrenceCopyWithImpl;
@useResult
$Res call({
 String id, String patientId, List<Symptom> symptoms, String? remarks, String? diseaseOccurrenceId, bool chat, DateTime registeredDate, List<ProbableDisease> probableDiseases
});




}
/// @nodoc
class _$SymptomOccurrenceCopyWithImpl<$Res>
    implements $SymptomOccurrenceCopyWith<$Res> {
  _$SymptomOccurrenceCopyWithImpl(this._self, this._then);

  final SymptomOccurrence _self;
  final $Res Function(SymptomOccurrence) _then;

/// Create a copy of SymptomOccurrence
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientId = null,Object? symptoms = null,Object? remarks = freezed,Object? diseaseOccurrenceId = freezed,Object? chat = null,Object? registeredDate = null,Object? probableDiseases = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,symptoms: null == symptoms ? _self.symptoms : symptoms // ignore: cast_nullable_to_non_nullable
as List<Symptom>,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,diseaseOccurrenceId: freezed == diseaseOccurrenceId ? _self.diseaseOccurrenceId : diseaseOccurrenceId // ignore: cast_nullable_to_non_nullable
as String?,chat: null == chat ? _self.chat : chat // ignore: cast_nullable_to_non_nullable
as bool,registeredDate: null == registeredDate ? _self.registeredDate : registeredDate // ignore: cast_nullable_to_non_nullable
as DateTime,probableDiseases: null == probableDiseases ? _self.probableDiseases : probableDiseases // ignore: cast_nullable_to_non_nullable
as List<ProbableDisease>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SymptomOccurrence implements SymptomOccurrence {
  const _SymptomOccurrence({required this.id, required this.patientId, required final  List<Symptom> symptoms, this.remarks, this.diseaseOccurrenceId, required this.chat, required this.registeredDate, required final  List<ProbableDisease> probableDiseases}): _symptoms = symptoms,_probableDiseases = probableDiseases;
  factory _SymptomOccurrence.fromJson(Map<String, dynamic> json) => _$SymptomOccurrenceFromJson(json);

@override final  String id;
@override final  String patientId;
 final  List<Symptom> _symptoms;
@override List<Symptom> get symptoms {
  if (_symptoms is EqualUnmodifiableListView) return _symptoms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_symptoms);
}

@override final  String? remarks;
@override final  String? diseaseOccurrenceId;
@override final  bool chat;
@override final  DateTime registeredDate;
 final  List<ProbableDisease> _probableDiseases;
@override List<ProbableDisease> get probableDiseases {
  if (_probableDiseases is EqualUnmodifiableListView) return _probableDiseases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_probableDiseases);
}


/// Create a copy of SymptomOccurrence
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SymptomOccurrenceCopyWith<_SymptomOccurrence> get copyWith => __$SymptomOccurrenceCopyWithImpl<_SymptomOccurrence>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SymptomOccurrenceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SymptomOccurrence&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&const DeepCollectionEquality().equals(other._symptoms, _symptoms)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.diseaseOccurrenceId, diseaseOccurrenceId) || other.diseaseOccurrenceId == diseaseOccurrenceId)&&(identical(other.chat, chat) || other.chat == chat)&&(identical(other.registeredDate, registeredDate) || other.registeredDate == registeredDate)&&const DeepCollectionEquality().equals(other._probableDiseases, _probableDiseases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,patientId,const DeepCollectionEquality().hash(_symptoms),remarks,diseaseOccurrenceId,chat,registeredDate,const DeepCollectionEquality().hash(_probableDiseases));

@override
String toString() {
  return 'SymptomOccurrence(id: $id, patientId: $patientId, symptoms: $symptoms, remarks: $remarks, diseaseOccurrenceId: $diseaseOccurrenceId, chat: $chat, registeredDate: $registeredDate, probableDiseases: $probableDiseases)';
}


}

/// @nodoc
abstract mixin class _$SymptomOccurrenceCopyWith<$Res> implements $SymptomOccurrenceCopyWith<$Res> {
  factory _$SymptomOccurrenceCopyWith(_SymptomOccurrence value, $Res Function(_SymptomOccurrence) _then) = __$SymptomOccurrenceCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientId, List<Symptom> symptoms, String? remarks, String? diseaseOccurrenceId, bool chat, DateTime registeredDate, List<ProbableDisease> probableDiseases
});




}
/// @nodoc
class __$SymptomOccurrenceCopyWithImpl<$Res>
    implements _$SymptomOccurrenceCopyWith<$Res> {
  __$SymptomOccurrenceCopyWithImpl(this._self, this._then);

  final _SymptomOccurrence _self;
  final $Res Function(_SymptomOccurrence) _then;

/// Create a copy of SymptomOccurrence
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientId = null,Object? symptoms = null,Object? remarks = freezed,Object? diseaseOccurrenceId = freezed,Object? chat = null,Object? registeredDate = null,Object? probableDiseases = null,}) {
  return _then(_SymptomOccurrence(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,symptoms: null == symptoms ? _self._symptoms : symptoms // ignore: cast_nullable_to_non_nullable
as List<Symptom>,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,diseaseOccurrenceId: freezed == diseaseOccurrenceId ? _self.diseaseOccurrenceId : diseaseOccurrenceId // ignore: cast_nullable_to_non_nullable
as String?,chat: null == chat ? _self.chat : chat // ignore: cast_nullable_to_non_nullable
as bool,registeredDate: null == registeredDate ? _self.registeredDate : registeredDate // ignore: cast_nullable_to_non_nullable
as DateTime,probableDiseases: null == probableDiseases ? _self._probableDiseases : probableDiseases // ignore: cast_nullable_to_non_nullable
as List<ProbableDisease>,
  ));
}


}

// dart format on
