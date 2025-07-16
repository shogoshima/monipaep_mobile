// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brasilapi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Brasilapi {

 String get cep; String get state; String get city; String get neighborhood; String get street;
/// Create a copy of Brasilapi
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrasilapiCopyWith<Brasilapi> get copyWith => _$BrasilapiCopyWithImpl<Brasilapi>(this as Brasilapi, _$identity);

  /// Serializes this Brasilapi to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Brasilapi&&(identical(other.cep, cep) || other.cep == cep)&&(identical(other.state, state) || other.state == state)&&(identical(other.city, city) || other.city == city)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.street, street) || other.street == street));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cep,state,city,neighborhood,street);

@override
String toString() {
  return 'Brasilapi(cep: $cep, state: $state, city: $city, neighborhood: $neighborhood, street: $street)';
}


}

/// @nodoc
abstract mixin class $BrasilapiCopyWith<$Res>  {
  factory $BrasilapiCopyWith(Brasilapi value, $Res Function(Brasilapi) _then) = _$BrasilapiCopyWithImpl;
@useResult
$Res call({
 String cep, String state, String city, String neighborhood, String street
});




}
/// @nodoc
class _$BrasilapiCopyWithImpl<$Res>
    implements $BrasilapiCopyWith<$Res> {
  _$BrasilapiCopyWithImpl(this._self, this._then);

  final Brasilapi _self;
  final $Res Function(Brasilapi) _then;

/// Create a copy of Brasilapi
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cep = null,Object? state = null,Object? city = null,Object? neighborhood = null,Object? street = null,}) {
  return _then(_self.copyWith(
cep: null == cep ? _self.cep : cep // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,neighborhood: null == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Brasilapi implements Brasilapi {
  const _Brasilapi({required this.cep, required this.state, required this.city, required this.neighborhood, required this.street});
  factory _Brasilapi.fromJson(Map<String, dynamic> json) => _$BrasilapiFromJson(json);

@override final  String cep;
@override final  String state;
@override final  String city;
@override final  String neighborhood;
@override final  String street;

/// Create a copy of Brasilapi
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrasilapiCopyWith<_Brasilapi> get copyWith => __$BrasilapiCopyWithImpl<_Brasilapi>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrasilapiToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Brasilapi&&(identical(other.cep, cep) || other.cep == cep)&&(identical(other.state, state) || other.state == state)&&(identical(other.city, city) || other.city == city)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.street, street) || other.street == street));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cep,state,city,neighborhood,street);

@override
String toString() {
  return 'Brasilapi(cep: $cep, state: $state, city: $city, neighborhood: $neighborhood, street: $street)';
}


}

/// @nodoc
abstract mixin class _$BrasilapiCopyWith<$Res> implements $BrasilapiCopyWith<$Res> {
  factory _$BrasilapiCopyWith(_Brasilapi value, $Res Function(_Brasilapi) _then) = __$BrasilapiCopyWithImpl;
@override @useResult
$Res call({
 String cep, String state, String city, String neighborhood, String street
});




}
/// @nodoc
class __$BrasilapiCopyWithImpl<$Res>
    implements _$BrasilapiCopyWith<$Res> {
  __$BrasilapiCopyWithImpl(this._self, this._then);

  final _Brasilapi _self;
  final $Res Function(_Brasilapi) _then;

/// Create a copy of Brasilapi
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cep = null,Object? state = null,Object? city = null,Object? neighborhood = null,Object? street = null,}) {
  return _then(_Brasilapi(
cep: null == cep ? _self.cep : cep // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,neighborhood: null == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
