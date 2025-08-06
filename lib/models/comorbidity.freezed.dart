// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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


/// Adds pattern-matching-related methods to [Comorbidity].
extension ComorbidityPatterns on Comorbidity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Comorbidity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Comorbidity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Comorbidity value)  $default,){
final _that = this;
switch (_that) {
case _Comorbidity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Comorbidity value)?  $default,){
final _that = this;
switch (_that) {
case _Comorbidity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Comorbidity() when $default != null:
return $default(_that.id,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description)  $default,) {final _that = this;
switch (_that) {
case _Comorbidity():
return $default(_that.id,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description)?  $default,) {final _that = this;
switch (_that) {
case _Comorbidity() when $default != null:
return $default(_that.id,_that.name,_that.description);case _:
  return null;

}
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
