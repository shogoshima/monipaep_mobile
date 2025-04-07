// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comorbidity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Comorbidity {

 String get id; String get name; String get description;
/// Create a copy of Comorbidity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComorbidityCopyWith<Comorbidity> get copyWith => _$ComorbidityCopyWithImpl<Comorbidity>(this as Comorbidity, _$identity);

  /// Serializes this Comorbidity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Comorbidity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'Comorbidity(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $ComorbidityCopyWith<$Res>  {
  factory $ComorbidityCopyWith(Comorbidity value, $Res Function(Comorbidity) _then) = _$ComorbidityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description
});




}
/// @nodoc
class _$ComorbidityCopyWithImpl<$Res>
    implements $ComorbidityCopyWith<$Res> {
  _$ComorbidityCopyWithImpl(this._self, this._then);

  final Comorbidity _self;
  final $Res Function(Comorbidity) _then;

/// Create a copy of Comorbidity
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

class _Comorbidity implements Comorbidity {
  const _Comorbidity({required this.id, required this.name, required this.description});
  factory _Comorbidity.fromJson(Map<String, dynamic> json) => _$ComorbidityFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;

/// Create a copy of Comorbidity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComorbidityCopyWith<_Comorbidity> get copyWith => __$ComorbidityCopyWithImpl<_Comorbidity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComorbidityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Comorbidity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'Comorbidity(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ComorbidityCopyWith<$Res> implements $ComorbidityCopyWith<$Res> {
  factory _$ComorbidityCopyWith(_Comorbidity value, $Res Function(_Comorbidity) _then) = __$ComorbidityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description
});




}
/// @nodoc
class __$ComorbidityCopyWithImpl<$Res>
    implements _$ComorbidityCopyWith<$Res> {
  __$ComorbidityCopyWithImpl(this._self, this._then);

  final _Comorbidity _self;
  final $Res Function(_Comorbidity) _then;

/// Create a copy of Comorbidity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,}) {
  return _then(_Comorbidity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
