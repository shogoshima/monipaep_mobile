// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Analysis {

 String get healthProtocolId; String get diseaseId; String get diseaseName; num get gravityLevel; String get gravityLabel; String get instructions; List<String> get comorbiditiesMatched; List<String> get specialConditionsMatched; String? get referUSM;
/// Create a copy of Analysis
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisCopyWith<Analysis> get copyWith => _$AnalysisCopyWithImpl<Analysis>(this as Analysis, _$identity);

  /// Serializes this Analysis to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Analysis&&(identical(other.healthProtocolId, healthProtocolId) || other.healthProtocolId == healthProtocolId)&&(identical(other.diseaseId, diseaseId) || other.diseaseId == diseaseId)&&(identical(other.diseaseName, diseaseName) || other.diseaseName == diseaseName)&&(identical(other.gravityLevel, gravityLevel) || other.gravityLevel == gravityLevel)&&(identical(other.gravityLabel, gravityLabel) || other.gravityLabel == gravityLabel)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&const DeepCollectionEquality().equals(other.comorbiditiesMatched, comorbiditiesMatched)&&const DeepCollectionEquality().equals(other.specialConditionsMatched, specialConditionsMatched)&&(identical(other.referUSM, referUSM) || other.referUSM == referUSM));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,healthProtocolId,diseaseId,diseaseName,gravityLevel,gravityLabel,instructions,const DeepCollectionEquality().hash(comorbiditiesMatched),const DeepCollectionEquality().hash(specialConditionsMatched),referUSM);

@override
String toString() {
  return 'Analysis(healthProtocolId: $healthProtocolId, diseaseId: $diseaseId, diseaseName: $diseaseName, gravityLevel: $gravityLevel, gravityLabel: $gravityLabel, instructions: $instructions, comorbiditiesMatched: $comorbiditiesMatched, specialConditionsMatched: $specialConditionsMatched, referUSM: $referUSM)';
}


}

/// @nodoc
abstract mixin class $AnalysisCopyWith<$Res>  {
  factory $AnalysisCopyWith(Analysis value, $Res Function(Analysis) _then) = _$AnalysisCopyWithImpl;
@useResult
$Res call({
 String healthProtocolId, String diseaseId, String diseaseName, num gravityLevel, String gravityLabel, String instructions, List<String> comorbiditiesMatched, List<String> specialConditionsMatched, String? referUSM
});




}
/// @nodoc
class _$AnalysisCopyWithImpl<$Res>
    implements $AnalysisCopyWith<$Res> {
  _$AnalysisCopyWithImpl(this._self, this._then);

  final Analysis _self;
  final $Res Function(Analysis) _then;

/// Create a copy of Analysis
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? healthProtocolId = null,Object? diseaseId = null,Object? diseaseName = null,Object? gravityLevel = null,Object? gravityLabel = null,Object? instructions = null,Object? comorbiditiesMatched = null,Object? specialConditionsMatched = null,Object? referUSM = freezed,}) {
  return _then(_self.copyWith(
healthProtocolId: null == healthProtocolId ? _self.healthProtocolId : healthProtocolId // ignore: cast_nullable_to_non_nullable
as String,diseaseId: null == diseaseId ? _self.diseaseId : diseaseId // ignore: cast_nullable_to_non_nullable
as String,diseaseName: null == diseaseName ? _self.diseaseName : diseaseName // ignore: cast_nullable_to_non_nullable
as String,gravityLevel: null == gravityLevel ? _self.gravityLevel : gravityLevel // ignore: cast_nullable_to_non_nullable
as num,gravityLabel: null == gravityLabel ? _self.gravityLabel : gravityLabel // ignore: cast_nullable_to_non_nullable
as String,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String,comorbiditiesMatched: null == comorbiditiesMatched ? _self.comorbiditiesMatched : comorbiditiesMatched // ignore: cast_nullable_to_non_nullable
as List<String>,specialConditionsMatched: null == specialConditionsMatched ? _self.specialConditionsMatched : specialConditionsMatched // ignore: cast_nullable_to_non_nullable
as List<String>,referUSM: freezed == referUSM ? _self.referUSM : referUSM // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Analysis].
extension AnalysisPatterns on Analysis {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Analysis value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Analysis() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Analysis value)  $default,){
final _that = this;
switch (_that) {
case _Analysis():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Analysis value)?  $default,){
final _that = this;
switch (_that) {
case _Analysis() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String healthProtocolId,  String diseaseId,  String diseaseName,  num gravityLevel,  String gravityLabel,  String instructions,  List<String> comorbiditiesMatched,  List<String> specialConditionsMatched,  String? referUSM)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Analysis() when $default != null:
return $default(_that.healthProtocolId,_that.diseaseId,_that.diseaseName,_that.gravityLevel,_that.gravityLabel,_that.instructions,_that.comorbiditiesMatched,_that.specialConditionsMatched,_that.referUSM);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String healthProtocolId,  String diseaseId,  String diseaseName,  num gravityLevel,  String gravityLabel,  String instructions,  List<String> comorbiditiesMatched,  List<String> specialConditionsMatched,  String? referUSM)  $default,) {final _that = this;
switch (_that) {
case _Analysis():
return $default(_that.healthProtocolId,_that.diseaseId,_that.diseaseName,_that.gravityLevel,_that.gravityLabel,_that.instructions,_that.comorbiditiesMatched,_that.specialConditionsMatched,_that.referUSM);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String healthProtocolId,  String diseaseId,  String diseaseName,  num gravityLevel,  String gravityLabel,  String instructions,  List<String> comorbiditiesMatched,  List<String> specialConditionsMatched,  String? referUSM)?  $default,) {final _that = this;
switch (_that) {
case _Analysis() when $default != null:
return $default(_that.healthProtocolId,_that.diseaseId,_that.diseaseName,_that.gravityLevel,_that.gravityLabel,_that.instructions,_that.comorbiditiesMatched,_that.specialConditionsMatched,_that.referUSM);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Analysis implements Analysis {
  const _Analysis({required this.healthProtocolId, required this.diseaseId, required this.diseaseName, required this.gravityLevel, required this.gravityLabel, required this.instructions, required final  List<String> comorbiditiesMatched, required final  List<String> specialConditionsMatched, this.referUSM}): _comorbiditiesMatched = comorbiditiesMatched,_specialConditionsMatched = specialConditionsMatched;
  factory _Analysis.fromJson(Map<String, dynamic> json) => _$AnalysisFromJson(json);

@override final  String healthProtocolId;
@override final  String diseaseId;
@override final  String diseaseName;
@override final  num gravityLevel;
@override final  String gravityLabel;
@override final  String instructions;
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

@override final  String? referUSM;

/// Create a copy of Analysis
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalysisCopyWith<_Analysis> get copyWith => __$AnalysisCopyWithImpl<_Analysis>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalysisToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Analysis&&(identical(other.healthProtocolId, healthProtocolId) || other.healthProtocolId == healthProtocolId)&&(identical(other.diseaseId, diseaseId) || other.diseaseId == diseaseId)&&(identical(other.diseaseName, diseaseName) || other.diseaseName == diseaseName)&&(identical(other.gravityLevel, gravityLevel) || other.gravityLevel == gravityLevel)&&(identical(other.gravityLabel, gravityLabel) || other.gravityLabel == gravityLabel)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&const DeepCollectionEquality().equals(other._comorbiditiesMatched, _comorbiditiesMatched)&&const DeepCollectionEquality().equals(other._specialConditionsMatched, _specialConditionsMatched)&&(identical(other.referUSM, referUSM) || other.referUSM == referUSM));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,healthProtocolId,diseaseId,diseaseName,gravityLevel,gravityLabel,instructions,const DeepCollectionEquality().hash(_comorbiditiesMatched),const DeepCollectionEquality().hash(_specialConditionsMatched),referUSM);

@override
String toString() {
  return 'Analysis(healthProtocolId: $healthProtocolId, diseaseId: $diseaseId, diseaseName: $diseaseName, gravityLevel: $gravityLevel, gravityLabel: $gravityLabel, instructions: $instructions, comorbiditiesMatched: $comorbiditiesMatched, specialConditionsMatched: $specialConditionsMatched, referUSM: $referUSM)';
}


}

/// @nodoc
abstract mixin class _$AnalysisCopyWith<$Res> implements $AnalysisCopyWith<$Res> {
  factory _$AnalysisCopyWith(_Analysis value, $Res Function(_Analysis) _then) = __$AnalysisCopyWithImpl;
@override @useResult
$Res call({
 String healthProtocolId, String diseaseId, String diseaseName, num gravityLevel, String gravityLabel, String instructions, List<String> comorbiditiesMatched, List<String> specialConditionsMatched, String? referUSM
});




}
/// @nodoc
class __$AnalysisCopyWithImpl<$Res>
    implements _$AnalysisCopyWith<$Res> {
  __$AnalysisCopyWithImpl(this._self, this._then);

  final _Analysis _self;
  final $Res Function(_Analysis) _then;

/// Create a copy of Analysis
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? healthProtocolId = null,Object? diseaseId = null,Object? diseaseName = null,Object? gravityLevel = null,Object? gravityLabel = null,Object? instructions = null,Object? comorbiditiesMatched = null,Object? specialConditionsMatched = null,Object? referUSM = freezed,}) {
  return _then(_Analysis(
healthProtocolId: null == healthProtocolId ? _self.healthProtocolId : healthProtocolId // ignore: cast_nullable_to_non_nullable
as String,diseaseId: null == diseaseId ? _self.diseaseId : diseaseId // ignore: cast_nullable_to_non_nullable
as String,diseaseName: null == diseaseName ? _self.diseaseName : diseaseName // ignore: cast_nullable_to_non_nullable
as String,gravityLevel: null == gravityLevel ? _self.gravityLevel : gravityLevel // ignore: cast_nullable_to_non_nullable
as num,gravityLabel: null == gravityLabel ? _self.gravityLabel : gravityLabel // ignore: cast_nullable_to_non_nullable
as String,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String,comorbiditiesMatched: null == comorbiditiesMatched ? _self._comorbiditiesMatched : comorbiditiesMatched // ignore: cast_nullable_to_non_nullable
as List<String>,specialConditionsMatched: null == specialConditionsMatched ? _self._specialConditionsMatched : specialConditionsMatched // ignore: cast_nullable_to_non_nullable
as List<String>,referUSM: freezed == referUSM ? _self.referUSM : referUSM // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
