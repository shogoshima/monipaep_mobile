// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_dengue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InfoDengue {

 num get nivel;
/// Create a copy of InfoDengue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoDengueCopyWith<InfoDengue> get copyWith => _$InfoDengueCopyWithImpl<InfoDengue>(this as InfoDengue, _$identity);

  /// Serializes this InfoDengue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfoDengue&&(identical(other.nivel, nivel) || other.nivel == nivel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nivel);

@override
String toString() {
  return 'InfoDengue(nivel: $nivel)';
}


}

/// @nodoc
abstract mixin class $InfoDengueCopyWith<$Res>  {
  factory $InfoDengueCopyWith(InfoDengue value, $Res Function(InfoDengue) _then) = _$InfoDengueCopyWithImpl;
@useResult
$Res call({
 num nivel
});




}
/// @nodoc
class _$InfoDengueCopyWithImpl<$Res>
    implements $InfoDengueCopyWith<$Res> {
  _$InfoDengueCopyWithImpl(this._self, this._then);

  final InfoDengue _self;
  final $Res Function(InfoDengue) _then;

/// Create a copy of InfoDengue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nivel = null,}) {
  return _then(_self.copyWith(
nivel: null == nivel ? _self.nivel : nivel // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [InfoDengue].
extension InfoDenguePatterns on InfoDengue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfoDengue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfoDengue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfoDengue value)  $default,){
final _that = this;
switch (_that) {
case _InfoDengue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfoDengue value)?  $default,){
final _that = this;
switch (_that) {
case _InfoDengue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( num nivel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InfoDengue() when $default != null:
return $default(_that.nivel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( num nivel)  $default,) {final _that = this;
switch (_that) {
case _InfoDengue():
return $default(_that.nivel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( num nivel)?  $default,) {final _that = this;
switch (_that) {
case _InfoDengue() when $default != null:
return $default(_that.nivel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InfoDengue implements InfoDengue {
  const _InfoDengue({required this.nivel});
  factory _InfoDengue.fromJson(Map<String, dynamic> json) => _$InfoDengueFromJson(json);

@override final  num nivel;

/// Create a copy of InfoDengue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoDengueCopyWith<_InfoDengue> get copyWith => __$InfoDengueCopyWithImpl<_InfoDengue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InfoDengueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoDengue&&(identical(other.nivel, nivel) || other.nivel == nivel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nivel);

@override
String toString() {
  return 'InfoDengue(nivel: $nivel)';
}


}

/// @nodoc
abstract mixin class _$InfoDengueCopyWith<$Res> implements $InfoDengueCopyWith<$Res> {
  factory _$InfoDengueCopyWith(_InfoDengue value, $Res Function(_InfoDengue) _then) = __$InfoDengueCopyWithImpl;
@override @useResult
$Res call({
 num nivel
});




}
/// @nodoc
class __$InfoDengueCopyWithImpl<$Res>
    implements _$InfoDengueCopyWith<$Res> {
  __$InfoDengueCopyWithImpl(this._self, this._then);

  final _InfoDengue _self;
  final $Res Function(_InfoDengue) _then;

/// Create a copy of InfoDengue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nivel = null,}) {
  return _then(_InfoDengue(
nivel: null == nivel ? _self.nivel : nivel // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

// dart format on
