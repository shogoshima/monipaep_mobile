// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FaqGroup {

 String get id; String get name; List<Faq> get faqs;
/// Create a copy of FaqGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaqGroupCopyWith<FaqGroup> get copyWith => _$FaqGroupCopyWithImpl<FaqGroup>(this as FaqGroup, _$identity);

  /// Serializes this FaqGroup to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaqGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.faqs, faqs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(faqs));

@override
String toString() {
  return 'FaqGroup(id: $id, name: $name, faqs: $faqs)';
}


}

/// @nodoc
abstract mixin class $FaqGroupCopyWith<$Res>  {
  factory $FaqGroupCopyWith(FaqGroup value, $Res Function(FaqGroup) _then) = _$FaqGroupCopyWithImpl;
@useResult
$Res call({
 String id, String name, List<Faq> faqs
});




}
/// @nodoc
class _$FaqGroupCopyWithImpl<$Res>
    implements $FaqGroupCopyWith<$Res> {
  _$FaqGroupCopyWithImpl(this._self, this._then);

  final FaqGroup _self;
  final $Res Function(FaqGroup) _then;

/// Create a copy of FaqGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? faqs = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,faqs: null == faqs ? _self.faqs : faqs // ignore: cast_nullable_to_non_nullable
as List<Faq>,
  ));
}

}


/// Adds pattern-matching-related methods to [FaqGroup].
extension FaqGroupPatterns on FaqGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FaqGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FaqGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FaqGroup value)  $default,){
final _that = this;
switch (_that) {
case _FaqGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FaqGroup value)?  $default,){
final _that = this;
switch (_that) {
case _FaqGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  List<Faq> faqs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FaqGroup() when $default != null:
return $default(_that.id,_that.name,_that.faqs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  List<Faq> faqs)  $default,) {final _that = this;
switch (_that) {
case _FaqGroup():
return $default(_that.id,_that.name,_that.faqs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  List<Faq> faqs)?  $default,) {final _that = this;
switch (_that) {
case _FaqGroup() when $default != null:
return $default(_that.id,_that.name,_that.faqs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FaqGroup implements FaqGroup {
  const _FaqGroup({required this.id, required this.name, required final  List<Faq> faqs}): _faqs = faqs;
  factory _FaqGroup.fromJson(Map<String, dynamic> json) => _$FaqGroupFromJson(json);

@override final  String id;
@override final  String name;
 final  List<Faq> _faqs;
@override List<Faq> get faqs {
  if (_faqs is EqualUnmodifiableListView) return _faqs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_faqs);
}


/// Create a copy of FaqGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaqGroupCopyWith<_FaqGroup> get copyWith => __$FaqGroupCopyWithImpl<_FaqGroup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FaqGroupToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaqGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._faqs, _faqs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_faqs));

@override
String toString() {
  return 'FaqGroup(id: $id, name: $name, faqs: $faqs)';
}


}

/// @nodoc
abstract mixin class _$FaqGroupCopyWith<$Res> implements $FaqGroupCopyWith<$Res> {
  factory _$FaqGroupCopyWith(_FaqGroup value, $Res Function(_FaqGroup) _then) = __$FaqGroupCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, List<Faq> faqs
});




}
/// @nodoc
class __$FaqGroupCopyWithImpl<$Res>
    implements _$FaqGroupCopyWith<$Res> {
  __$FaqGroupCopyWithImpl(this._self, this._then);

  final _FaqGroup _self;
  final $Res Function(_FaqGroup) _then;

/// Create a copy of FaqGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? faqs = null,}) {
  return _then(_FaqGroup(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,faqs: null == faqs ? _self._faqs : faqs // ignore: cast_nullable_to_non_nullable
as List<Faq>,
  ));
}


}

// dart format on
