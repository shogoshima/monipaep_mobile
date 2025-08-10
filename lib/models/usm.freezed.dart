// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Usm {

 String get id; String get name; String get state; String get city; String get neighborhood; String? get street; String? get number; List<String>? get weekdayDescriptions; double get latitude; double get longitude;
/// Create a copy of Usm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsmCopyWith<Usm> get copyWith => _$UsmCopyWithImpl<Usm>(this as Usm, _$identity);

  /// Serializes this Usm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Usm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.state, state) || other.state == state)&&(identical(other.city, city) || other.city == city)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.street, street) || other.street == street)&&(identical(other.number, number) || other.number == number)&&const DeepCollectionEquality().equals(other.weekdayDescriptions, weekdayDescriptions)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,state,city,neighborhood,street,number,const DeepCollectionEquality().hash(weekdayDescriptions),latitude,longitude);

@override
String toString() {
  return 'Usm(id: $id, name: $name, state: $state, city: $city, neighborhood: $neighborhood, street: $street, number: $number, weekdayDescriptions: $weekdayDescriptions, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $UsmCopyWith<$Res>  {
  factory $UsmCopyWith(Usm value, $Res Function(Usm) _then) = _$UsmCopyWithImpl;
@useResult
$Res call({
 String id, String name, String state, String city, String neighborhood, String? street, String? number, List<String>? weekdayDescriptions, double latitude, double longitude
});




}
/// @nodoc
class _$UsmCopyWithImpl<$Res>
    implements $UsmCopyWith<$Res> {
  _$UsmCopyWithImpl(this._self, this._then);

  final Usm _self;
  final $Res Function(Usm) _then;

/// Create a copy of Usm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? state = null,Object? city = null,Object? neighborhood = null,Object? street = freezed,Object? number = freezed,Object? weekdayDescriptions = freezed,Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,neighborhood: null == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,weekdayDescriptions: freezed == weekdayDescriptions ? _self.weekdayDescriptions : weekdayDescriptions // ignore: cast_nullable_to_non_nullable
as List<String>?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Usm].
extension UsmPatterns on Usm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Usm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Usm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Usm value)  $default,){
final _that = this;
switch (_that) {
case _Usm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Usm value)?  $default,){
final _that = this;
switch (_that) {
case _Usm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String state,  String city,  String neighborhood,  String? street,  String? number,  List<String>? weekdayDescriptions,  double latitude,  double longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Usm() when $default != null:
return $default(_that.id,_that.name,_that.state,_that.city,_that.neighborhood,_that.street,_that.number,_that.weekdayDescriptions,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String state,  String city,  String neighborhood,  String? street,  String? number,  List<String>? weekdayDescriptions,  double latitude,  double longitude)  $default,) {final _that = this;
switch (_that) {
case _Usm():
return $default(_that.id,_that.name,_that.state,_that.city,_that.neighborhood,_that.street,_that.number,_that.weekdayDescriptions,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String state,  String city,  String neighborhood,  String? street,  String? number,  List<String>? weekdayDescriptions,  double latitude,  double longitude)?  $default,) {final _that = this;
switch (_that) {
case _Usm() when $default != null:
return $default(_that.id,_that.name,_that.state,_that.city,_that.neighborhood,_that.street,_that.number,_that.weekdayDescriptions,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Usm implements Usm {
  const _Usm({required this.id, required this.name, required this.state, required this.city, required this.neighborhood, this.street, this.number, final  List<String>? weekdayDescriptions, required this.latitude, required this.longitude}): _weekdayDescriptions = weekdayDescriptions;
  factory _Usm.fromJson(Map<String, dynamic> json) => _$UsmFromJson(json);

@override final  String id;
@override final  String name;
@override final  String state;
@override final  String city;
@override final  String neighborhood;
@override final  String? street;
@override final  String? number;
 final  List<String>? _weekdayDescriptions;
@override List<String>? get weekdayDescriptions {
  final value = _weekdayDescriptions;
  if (value == null) return null;
  if (_weekdayDescriptions is EqualUnmodifiableListView) return _weekdayDescriptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  double latitude;
@override final  double longitude;

/// Create a copy of Usm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsmCopyWith<_Usm> get copyWith => __$UsmCopyWithImpl<_Usm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Usm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.state, state) || other.state == state)&&(identical(other.city, city) || other.city == city)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.street, street) || other.street == street)&&(identical(other.number, number) || other.number == number)&&const DeepCollectionEquality().equals(other._weekdayDescriptions, _weekdayDescriptions)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,state,city,neighborhood,street,number,const DeepCollectionEquality().hash(_weekdayDescriptions),latitude,longitude);

@override
String toString() {
  return 'Usm(id: $id, name: $name, state: $state, city: $city, neighborhood: $neighborhood, street: $street, number: $number, weekdayDescriptions: $weekdayDescriptions, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$UsmCopyWith<$Res> implements $UsmCopyWith<$Res> {
  factory _$UsmCopyWith(_Usm value, $Res Function(_Usm) _then) = __$UsmCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String state, String city, String neighborhood, String? street, String? number, List<String>? weekdayDescriptions, double latitude, double longitude
});




}
/// @nodoc
class __$UsmCopyWithImpl<$Res>
    implements _$UsmCopyWith<$Res> {
  __$UsmCopyWithImpl(this._self, this._then);

  final _Usm _self;
  final $Res Function(_Usm) _then;

/// Create a copy of Usm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? state = null,Object? city = null,Object? neighborhood = null,Object? street = freezed,Object? number = freezed,Object? weekdayDescriptions = freezed,Object? latitude = null,Object? longitude = null,}) {
  return _then(_Usm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,neighborhood: null == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,weekdayDescriptions: freezed == weekdayDescriptions ? _self._weekdayDescriptions : weekdayDescriptions // ignore: cast_nullable_to_non_nullable
as List<String>?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
