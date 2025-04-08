// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'probable_disease.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProbableDisease {

 String get id; String get name; bool get isPatientInRiskGroup; num get suspicionScore;
/// Create a copy of ProbableDisease
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProbableDiseaseCopyWith<ProbableDisease> get copyWith => _$ProbableDiseaseCopyWithImpl<ProbableDisease>(this as ProbableDisease, _$identity);

  /// Serializes this ProbableDisease to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProbableDisease&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isPatientInRiskGroup, isPatientInRiskGroup) || other.isPatientInRiskGroup == isPatientInRiskGroup)&&(identical(other.suspicionScore, suspicionScore) || other.suspicionScore == suspicionScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isPatientInRiskGroup,suspicionScore);

@override
String toString() {
  return 'ProbableDisease(id: $id, name: $name, isPatientInRiskGroup: $isPatientInRiskGroup, suspicionScore: $suspicionScore)';
}


}

/// @nodoc
abstract mixin class $ProbableDiseaseCopyWith<$Res>  {
  factory $ProbableDiseaseCopyWith(ProbableDisease value, $Res Function(ProbableDisease) _then) = _$ProbableDiseaseCopyWithImpl;
@useResult
$Res call({
 String id, String name, bool isPatientInRiskGroup, num suspicionScore
});




}
/// @nodoc
class _$ProbableDiseaseCopyWithImpl<$Res>
    implements $ProbableDiseaseCopyWith<$Res> {
  _$ProbableDiseaseCopyWithImpl(this._self, this._then);

  final ProbableDisease _self;
  final $Res Function(ProbableDisease) _then;

/// Create a copy of ProbableDisease
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? isPatientInRiskGroup = null,Object? suspicionScore = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isPatientInRiskGroup: null == isPatientInRiskGroup ? _self.isPatientInRiskGroup : isPatientInRiskGroup // ignore: cast_nullable_to_non_nullable
as bool,suspicionScore: null == suspicionScore ? _self.suspicionScore : suspicionScore // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProbableDisease implements ProbableDisease {
  const _ProbableDisease({required this.id, required this.name, required this.isPatientInRiskGroup, required this.suspicionScore});
  factory _ProbableDisease.fromJson(Map<String, dynamic> json) => _$ProbableDiseaseFromJson(json);

@override final  String id;
@override final  String name;
@override final  bool isPatientInRiskGroup;
@override final  num suspicionScore;

/// Create a copy of ProbableDisease
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProbableDiseaseCopyWith<_ProbableDisease> get copyWith => __$ProbableDiseaseCopyWithImpl<_ProbableDisease>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProbableDiseaseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProbableDisease&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isPatientInRiskGroup, isPatientInRiskGroup) || other.isPatientInRiskGroup == isPatientInRiskGroup)&&(identical(other.suspicionScore, suspicionScore) || other.suspicionScore == suspicionScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isPatientInRiskGroup,suspicionScore);

@override
String toString() {
  return 'ProbableDisease(id: $id, name: $name, isPatientInRiskGroup: $isPatientInRiskGroup, suspicionScore: $suspicionScore)';
}


}

/// @nodoc
abstract mixin class _$ProbableDiseaseCopyWith<$Res> implements $ProbableDiseaseCopyWith<$Res> {
  factory _$ProbableDiseaseCopyWith(_ProbableDisease value, $Res Function(_ProbableDisease) _then) = __$ProbableDiseaseCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, bool isPatientInRiskGroup, num suspicionScore
});




}
/// @nodoc
class __$ProbableDiseaseCopyWithImpl<$Res>
    implements _$ProbableDiseaseCopyWith<$Res> {
  __$ProbableDiseaseCopyWithImpl(this._self, this._then);

  final _ProbableDisease _self;
  final $Res Function(_ProbableDisease) _then;

/// Create a copy of ProbableDisease
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? isPatientInRiskGroup = null,Object? suspicionScore = null,}) {
  return _then(_ProbableDisease(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isPatientInRiskGroup: null == isPatientInRiskGroup ? _self.isPatientInRiskGroup : isPatientInRiskGroup // ignore: cast_nullable_to_non_nullable
as bool,suspicionScore: null == suspicionScore ? _self.suspicionScore : suspicionScore // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

// dart format on
