// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gpt_protocol_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GptProtocolInput {

 String get healthProtocolId; List<String> get comorbiditiesMatched; List<String> get specialConditionsMatched;
/// Create a copy of GptProtocolInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GptProtocolInputCopyWith<GptProtocolInput> get copyWith => _$GptProtocolInputCopyWithImpl<GptProtocolInput>(this as GptProtocolInput, _$identity);

  /// Serializes this GptProtocolInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GptProtocolInput&&(identical(other.healthProtocolId, healthProtocolId) || other.healthProtocolId == healthProtocolId)&&const DeepCollectionEquality().equals(other.comorbiditiesMatched, comorbiditiesMatched)&&const DeepCollectionEquality().equals(other.specialConditionsMatched, specialConditionsMatched));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,healthProtocolId,const DeepCollectionEquality().hash(comorbiditiesMatched),const DeepCollectionEquality().hash(specialConditionsMatched));

@override
String toString() {
  return 'GptProtocolInput(healthProtocolId: $healthProtocolId, comorbiditiesMatched: $comorbiditiesMatched, specialConditionsMatched: $specialConditionsMatched)';
}


}

/// @nodoc
abstract mixin class $GptProtocolInputCopyWith<$Res>  {
  factory $GptProtocolInputCopyWith(GptProtocolInput value, $Res Function(GptProtocolInput) _then) = _$GptProtocolInputCopyWithImpl;
@useResult
$Res call({
 String healthProtocolId, List<String> comorbiditiesMatched, List<String> specialConditionsMatched
});




}
/// @nodoc
class _$GptProtocolInputCopyWithImpl<$Res>
    implements $GptProtocolInputCopyWith<$Res> {
  _$GptProtocolInputCopyWithImpl(this._self, this._then);

  final GptProtocolInput _self;
  final $Res Function(GptProtocolInput) _then;

/// Create a copy of GptProtocolInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? healthProtocolId = null,Object? comorbiditiesMatched = null,Object? specialConditionsMatched = null,}) {
  return _then(_self.copyWith(
healthProtocolId: null == healthProtocolId ? _self.healthProtocolId : healthProtocolId // ignore: cast_nullable_to_non_nullable
as String,comorbiditiesMatched: null == comorbiditiesMatched ? _self.comorbiditiesMatched : comorbiditiesMatched // ignore: cast_nullable_to_non_nullable
as List<String>,specialConditionsMatched: null == specialConditionsMatched ? _self.specialConditionsMatched : specialConditionsMatched // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [GptProtocolInput].
extension GptProtocolInputPatterns on GptProtocolInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GptProtocolInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GptProtocolInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GptProtocolInput value)  $default,){
final _that = this;
switch (_that) {
case _GptProtocolInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GptProtocolInput value)?  $default,){
final _that = this;
switch (_that) {
case _GptProtocolInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String healthProtocolId,  List<String> comorbiditiesMatched,  List<String> specialConditionsMatched)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GptProtocolInput() when $default != null:
return $default(_that.healthProtocolId,_that.comorbiditiesMatched,_that.specialConditionsMatched);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String healthProtocolId,  List<String> comorbiditiesMatched,  List<String> specialConditionsMatched)  $default,) {final _that = this;
switch (_that) {
case _GptProtocolInput():
return $default(_that.healthProtocolId,_that.comorbiditiesMatched,_that.specialConditionsMatched);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String healthProtocolId,  List<String> comorbiditiesMatched,  List<String> specialConditionsMatched)?  $default,) {final _that = this;
switch (_that) {
case _GptProtocolInput() when $default != null:
return $default(_that.healthProtocolId,_that.comorbiditiesMatched,_that.specialConditionsMatched);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GptProtocolInput implements GptProtocolInput {
  const _GptProtocolInput({required this.healthProtocolId, required final  List<String> comorbiditiesMatched, required final  List<String> specialConditionsMatched}): _comorbiditiesMatched = comorbiditiesMatched,_specialConditionsMatched = specialConditionsMatched;
  factory _GptProtocolInput.fromJson(Map<String, dynamic> json) => _$GptProtocolInputFromJson(json);

@override final  String healthProtocolId;
 final  List<String> _comorbiditiesMatched;
@override List<String> get comorbiditiesMatched {
  if (_comorbiditiesMatched is EqualUnmodifiableListView) return _comorbiditiesMatched;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comorbiditiesMatched);
}

 final  List<String> _specialConditionsMatched;
@override List<String> get specialConditionsMatched {
  if (_specialConditionsMatched is EqualUnmodifiableListView) return _specialConditionsMatched;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specialConditionsMatched);
}


/// Create a copy of GptProtocolInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GptProtocolInputCopyWith<_GptProtocolInput> get copyWith => __$GptProtocolInputCopyWithImpl<_GptProtocolInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GptProtocolInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GptProtocolInput&&(identical(other.healthProtocolId, healthProtocolId) || other.healthProtocolId == healthProtocolId)&&const DeepCollectionEquality().equals(other._comorbiditiesMatched, _comorbiditiesMatched)&&const DeepCollectionEquality().equals(other._specialConditionsMatched, _specialConditionsMatched));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,healthProtocolId,const DeepCollectionEquality().hash(_comorbiditiesMatched),const DeepCollectionEquality().hash(_specialConditionsMatched));

@override
String toString() {
  return 'GptProtocolInput(healthProtocolId: $healthProtocolId, comorbiditiesMatched: $comorbiditiesMatched, specialConditionsMatched: $specialConditionsMatched)';
}


}

/// @nodoc
abstract mixin class _$GptProtocolInputCopyWith<$Res> implements $GptProtocolInputCopyWith<$Res> {
  factory _$GptProtocolInputCopyWith(_GptProtocolInput value, $Res Function(_GptProtocolInput) _then) = __$GptProtocolInputCopyWithImpl;
@override @useResult
$Res call({
 String healthProtocolId, List<String> comorbiditiesMatched, List<String> specialConditionsMatched
});




}
/// @nodoc
class __$GptProtocolInputCopyWithImpl<$Res>
    implements _$GptProtocolInputCopyWith<$Res> {
  __$GptProtocolInputCopyWithImpl(this._self, this._then);

  final _GptProtocolInput _self;
  final $Res Function(_GptProtocolInput) _then;

/// Create a copy of GptProtocolInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? healthProtocolId = null,Object? comorbiditiesMatched = null,Object? specialConditionsMatched = null,}) {
  return _then(_GptProtocolInput(
healthProtocolId: null == healthProtocolId ? _self.healthProtocolId : healthProtocolId // ignore: cast_nullable_to_non_nullable
as String,comorbiditiesMatched: null == comorbiditiesMatched ? _self._comorbiditiesMatched : comorbiditiesMatched // ignore: cast_nullable_to_non_nullable
as List<String>,specialConditionsMatched: null == specialConditionsMatched ? _self._specialConditionsMatched : specialConditionsMatched // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
