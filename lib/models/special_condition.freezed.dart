// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'special_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpecialCondition {

 String get id; String get name; String get description;
/// Create a copy of SpecialCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecialConditionCopyWith<SpecialCondition> get copyWith => _$SpecialConditionCopyWithImpl<SpecialCondition>(this as SpecialCondition, _$identity);

  /// Serializes this SpecialCondition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecialCondition&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'SpecialCondition(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $SpecialConditionCopyWith<$Res>  {
  factory $SpecialConditionCopyWith(SpecialCondition value, $Res Function(SpecialCondition) _then) = _$SpecialConditionCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description
});




}
/// @nodoc
class _$SpecialConditionCopyWithImpl<$Res>
    implements $SpecialConditionCopyWith<$Res> {
  _$SpecialConditionCopyWithImpl(this._self, this._then);

  final SpecialCondition _self;
  final $Res Function(SpecialCondition) _then;

/// Create a copy of SpecialCondition
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

class _SpecialCondition implements SpecialCondition {
  const _SpecialCondition({required this.id, required this.name, required this.description});
  factory _SpecialCondition.fromJson(Map<String, dynamic> json) => _$SpecialConditionFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;

/// Create a copy of SpecialCondition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpecialConditionCopyWith<_SpecialCondition> get copyWith => __$SpecialConditionCopyWithImpl<_SpecialCondition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpecialConditionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpecialCondition&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'SpecialCondition(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$SpecialConditionCopyWith<$Res> implements $SpecialConditionCopyWith<$Res> {
  factory _$SpecialConditionCopyWith(_SpecialCondition value, $Res Function(_SpecialCondition) _then) = __$SpecialConditionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description
});




}
/// @nodoc
class __$SpecialConditionCopyWithImpl<$Res>
    implements _$SpecialConditionCopyWith<$Res> {
  __$SpecialConditionCopyWithImpl(this._self, this._then);

  final _SpecialCondition _self;
  final $Res Function(_SpecialCondition) _then;

/// Create a copy of SpecialCondition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,}) {
  return _then(_SpecialCondition(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
