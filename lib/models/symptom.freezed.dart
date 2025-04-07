// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symptom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Symptom {

 String get id; String get name; String get description;
/// Create a copy of Symptom
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SymptomCopyWith<Symptom> get copyWith => _$SymptomCopyWithImpl<Symptom>(this as Symptom, _$identity);

  /// Serializes this Symptom to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Symptom&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'Symptom(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $SymptomCopyWith<$Res>  {
  factory $SymptomCopyWith(Symptom value, $Res Function(Symptom) _then) = _$SymptomCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description
});




}
/// @nodoc
class _$SymptomCopyWithImpl<$Res>
    implements $SymptomCopyWith<$Res> {
  _$SymptomCopyWithImpl(this._self, this._then);

  final Symptom _self;
  final $Res Function(Symptom) _then;

/// Create a copy of Symptom
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Symptom implements Symptom {
  const _Symptom({required this.id, required this.name, required this.description});
  factory _Symptom.fromJson(Map<String, dynamic> json) => _$SymptomFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;

/// Create a copy of Symptom
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SymptomCopyWith<_Symptom> get copyWith => __$SymptomCopyWithImpl<_Symptom>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SymptomToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Symptom&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'Symptom(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$SymptomCopyWith<$Res> implements $SymptomCopyWith<$Res> {
  factory _$SymptomCopyWith(_Symptom value, $Res Function(_Symptom) _then) = __$SymptomCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description
});




}
/// @nodoc
class __$SymptomCopyWithImpl<$Res>
    implements _$SymptomCopyWith<$Res> {
  __$SymptomCopyWithImpl(this._self, this._then);

  final _Symptom _self;
  final $Res Function(_Symptom) _then;

/// Create a copy of Symptom
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,}) {
  return _then(_Symptom(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
