// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

 String get id; String get patientId; List<Symptom> get symptoms; bool get chat; DateTime get registeredDate; List<ProbableDisease> get probableDiseases; bool get isPatientInRiskGroup; String? get remarks; String? get instructions; String? get referUSM; String? get diseaseOccurrenceId;
/// Create a copy of SymptomOccurrence
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SymptomOccurrenceCopyWith<SymptomOccurrence> get copyWith => _$SymptomOccurrenceCopyWithImpl<SymptomOccurrence>(this as SymptomOccurrence, _$identity);

  /// Serializes this SymptomOccurrence to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SymptomOccurrence&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&const DeepCollectionEquality().equals(other.symptoms, symptoms)&&(identical(other.chat, chat) || other.chat == chat)&&(identical(other.registeredDate, registeredDate) || other.registeredDate == registeredDate)&&const DeepCollectionEquality().equals(other.probableDiseases, probableDiseases)&&(identical(other.isPatientInRiskGroup, isPatientInRiskGroup) || other.isPatientInRiskGroup == isPatientInRiskGroup)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.referUSM, referUSM) || other.referUSM == referUSM)&&(identical(other.diseaseOccurrenceId, diseaseOccurrenceId) || other.diseaseOccurrenceId == diseaseOccurrenceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,patientId,const DeepCollectionEquality().hash(symptoms),chat,registeredDate,const DeepCollectionEquality().hash(probableDiseases),isPatientInRiskGroup,remarks,instructions,referUSM,diseaseOccurrenceId);

@override
String toString() {
  return 'SymptomOccurrence(id: $id, patientId: $patientId, symptoms: $symptoms, chat: $chat, registeredDate: $registeredDate, probableDiseases: $probableDiseases, isPatientInRiskGroup: $isPatientInRiskGroup, remarks: $remarks, instructions: $instructions, referUSM: $referUSM, diseaseOccurrenceId: $diseaseOccurrenceId)';
}


}

/// @nodoc
abstract mixin class $SymptomOccurrenceCopyWith<$Res>  {
  factory $SymptomOccurrenceCopyWith(SymptomOccurrence value, $Res Function(SymptomOccurrence) _then) = _$SymptomOccurrenceCopyWithImpl;
@useResult
$Res call({
 String id, String patientId, List<Symptom> symptoms, bool chat, DateTime registeredDate, List<ProbableDisease> probableDiseases, bool isPatientInRiskGroup, String? remarks, String? instructions, String? referUSM, String? diseaseOccurrenceId
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientId = null,Object? symptoms = null,Object? chat = null,Object? registeredDate = null,Object? probableDiseases = null,Object? isPatientInRiskGroup = null,Object? remarks = freezed,Object? instructions = freezed,Object? referUSM = freezed,Object? diseaseOccurrenceId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,symptoms: null == symptoms ? _self.symptoms : symptoms // ignore: cast_nullable_to_non_nullable
as List<Symptom>,chat: null == chat ? _self.chat : chat // ignore: cast_nullable_to_non_nullable
as bool,registeredDate: null == registeredDate ? _self.registeredDate : registeredDate // ignore: cast_nullable_to_non_nullable
as DateTime,probableDiseases: null == probableDiseases ? _self.probableDiseases : probableDiseases // ignore: cast_nullable_to_non_nullable
as List<ProbableDisease>,isPatientInRiskGroup: null == isPatientInRiskGroup ? _self.isPatientInRiskGroup : isPatientInRiskGroup // ignore: cast_nullable_to_non_nullable
as bool,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,referUSM: freezed == referUSM ? _self.referUSM : referUSM // ignore: cast_nullable_to_non_nullable
as String?,diseaseOccurrenceId: freezed == diseaseOccurrenceId ? _self.diseaseOccurrenceId : diseaseOccurrenceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SymptomOccurrence].
extension SymptomOccurrencePatterns on SymptomOccurrence {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SymptomOccurrence value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SymptomOccurrence() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SymptomOccurrence value)  $default,){
final _that = this;
switch (_that) {
case _SymptomOccurrence():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SymptomOccurrence value)?  $default,){
final _that = this;
switch (_that) {
case _SymptomOccurrence() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patientId,  List<Symptom> symptoms,  bool chat,  DateTime registeredDate,  List<ProbableDisease> probableDiseases,  bool isPatientInRiskGroup,  String? remarks,  String? instructions,  String? referUSM,  String? diseaseOccurrenceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SymptomOccurrence() when $default != null:
return $default(_that.id,_that.patientId,_that.symptoms,_that.chat,_that.registeredDate,_that.probableDiseases,_that.isPatientInRiskGroup,_that.remarks,_that.instructions,_that.referUSM,_that.diseaseOccurrenceId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patientId,  List<Symptom> symptoms,  bool chat,  DateTime registeredDate,  List<ProbableDisease> probableDiseases,  bool isPatientInRiskGroup,  String? remarks,  String? instructions,  String? referUSM,  String? diseaseOccurrenceId)  $default,) {final _that = this;
switch (_that) {
case _SymptomOccurrence():
return $default(_that.id,_that.patientId,_that.symptoms,_that.chat,_that.registeredDate,_that.probableDiseases,_that.isPatientInRiskGroup,_that.remarks,_that.instructions,_that.referUSM,_that.diseaseOccurrenceId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patientId,  List<Symptom> symptoms,  bool chat,  DateTime registeredDate,  List<ProbableDisease> probableDiseases,  bool isPatientInRiskGroup,  String? remarks,  String? instructions,  String? referUSM,  String? diseaseOccurrenceId)?  $default,) {final _that = this;
switch (_that) {
case _SymptomOccurrence() when $default != null:
return $default(_that.id,_that.patientId,_that.symptoms,_that.chat,_that.registeredDate,_that.probableDiseases,_that.isPatientInRiskGroup,_that.remarks,_that.instructions,_that.referUSM,_that.diseaseOccurrenceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SymptomOccurrence implements SymptomOccurrence {
  const _SymptomOccurrence({required this.id, required this.patientId, required final  List<Symptom> symptoms, required this.chat, required this.registeredDate, required final  List<ProbableDisease> probableDiseases, required this.isPatientInRiskGroup, this.remarks, this.instructions, this.referUSM, this.diseaseOccurrenceId}): _symptoms = symptoms,_probableDiseases = probableDiseases;
  factory _SymptomOccurrence.fromJson(Map<String, dynamic> json) => _$SymptomOccurrenceFromJson(json);

@override final  String id;
@override final  String patientId;
 final  List<Symptom> _symptoms;
@override List<Symptom> get symptoms {
  if (_symptoms is EqualUnmodifiableListView) return _symptoms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_symptoms);
}

@override final  bool chat;
@override final  DateTime registeredDate;
 final  List<ProbableDisease> _probableDiseases;
@override List<ProbableDisease> get probableDiseases {
  if (_probableDiseases is EqualUnmodifiableListView) return _probableDiseases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_probableDiseases);
}

@override final  bool isPatientInRiskGroup;
@override final  String? remarks;
@override final  String? instructions;
@override final  String? referUSM;
@override final  String? diseaseOccurrenceId;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SymptomOccurrence&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&const DeepCollectionEquality().equals(other._symptoms, _symptoms)&&(identical(other.chat, chat) || other.chat == chat)&&(identical(other.registeredDate, registeredDate) || other.registeredDate == registeredDate)&&const DeepCollectionEquality().equals(other._probableDiseases, _probableDiseases)&&(identical(other.isPatientInRiskGroup, isPatientInRiskGroup) || other.isPatientInRiskGroup == isPatientInRiskGroup)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.referUSM, referUSM) || other.referUSM == referUSM)&&(identical(other.diseaseOccurrenceId, diseaseOccurrenceId) || other.diseaseOccurrenceId == diseaseOccurrenceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,patientId,const DeepCollectionEquality().hash(_symptoms),chat,registeredDate,const DeepCollectionEquality().hash(_probableDiseases),isPatientInRiskGroup,remarks,instructions,referUSM,diseaseOccurrenceId);

@override
String toString() {
  return 'SymptomOccurrence(id: $id, patientId: $patientId, symptoms: $symptoms, chat: $chat, registeredDate: $registeredDate, probableDiseases: $probableDiseases, isPatientInRiskGroup: $isPatientInRiskGroup, remarks: $remarks, instructions: $instructions, referUSM: $referUSM, diseaseOccurrenceId: $diseaseOccurrenceId)';
}


}

/// @nodoc
abstract mixin class _$SymptomOccurrenceCopyWith<$Res> implements $SymptomOccurrenceCopyWith<$Res> {
  factory _$SymptomOccurrenceCopyWith(_SymptomOccurrence value, $Res Function(_SymptomOccurrence) _then) = __$SymptomOccurrenceCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientId, List<Symptom> symptoms, bool chat, DateTime registeredDate, List<ProbableDisease> probableDiseases, bool isPatientInRiskGroup, String? remarks, String? instructions, String? referUSM, String? diseaseOccurrenceId
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientId = null,Object? symptoms = null,Object? chat = null,Object? registeredDate = null,Object? probableDiseases = null,Object? isPatientInRiskGroup = null,Object? remarks = freezed,Object? instructions = freezed,Object? referUSM = freezed,Object? diseaseOccurrenceId = freezed,}) {
  return _then(_SymptomOccurrence(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,symptoms: null == symptoms ? _self._symptoms : symptoms // ignore: cast_nullable_to_non_nullable
as List<Symptom>,chat: null == chat ? _self.chat : chat // ignore: cast_nullable_to_non_nullable
as bool,registeredDate: null == registeredDate ? _self.registeredDate : registeredDate // ignore: cast_nullable_to_non_nullable
as DateTime,probableDiseases: null == probableDiseases ? _self._probableDiseases : probableDiseases // ignore: cast_nullable_to_non_nullable
as List<ProbableDisease>,isPatientInRiskGroup: null == isPatientInRiskGroup ? _self.isPatientInRiskGroup : isPatientInRiskGroup // ignore: cast_nullable_to_non_nullable
as bool,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,referUSM: freezed == referUSM ? _self.referUSM : referUSM // ignore: cast_nullable_to_non_nullable
as String?,diseaseOccurrenceId: freezed == diseaseOccurrenceId ? _self.diseaseOccurrenceId : diseaseOccurrenceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
