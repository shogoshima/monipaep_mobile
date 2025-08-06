// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Patient {

 String get id; String get name; String get cpf; String get email; String get gender; String get phone; DateTime get birthdate; String get cep; String get state; String get city; String get neighborhood; String get street; String get houseNumber; bool get allowSms; bool get hasHealthPlan; bool get activeAccount; List<Comorbidity>? get comorbidities; List<SpecialCondition>? get specialConditions; String get status;
/// Create a copy of Patient
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientCopyWith<Patient> get copyWith => _$PatientCopyWithImpl<Patient>(this as Patient, _$identity);

  /// Serializes this Patient to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Patient&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cpf, cpf) || other.cpf == cpf)&&(identical(other.email, email) || other.email == email)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.birthdate, birthdate) || other.birthdate == birthdate)&&(identical(other.cep, cep) || other.cep == cep)&&(identical(other.state, state) || other.state == state)&&(identical(other.city, city) || other.city == city)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.street, street) || other.street == street)&&(identical(other.houseNumber, houseNumber) || other.houseNumber == houseNumber)&&(identical(other.allowSms, allowSms) || other.allowSms == allowSms)&&(identical(other.hasHealthPlan, hasHealthPlan) || other.hasHealthPlan == hasHealthPlan)&&(identical(other.activeAccount, activeAccount) || other.activeAccount == activeAccount)&&const DeepCollectionEquality().equals(other.comorbidities, comorbidities)&&const DeepCollectionEquality().equals(other.specialConditions, specialConditions)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,cpf,email,gender,phone,birthdate,cep,state,city,neighborhood,street,houseNumber,allowSms,hasHealthPlan,activeAccount,const DeepCollectionEquality().hash(comorbidities),const DeepCollectionEquality().hash(specialConditions),status]);

@override
String toString() {
  return 'Patient(id: $id, name: $name, cpf: $cpf, email: $email, gender: $gender, phone: $phone, birthdate: $birthdate, cep: $cep, state: $state, city: $city, neighborhood: $neighborhood, street: $street, houseNumber: $houseNumber, allowSms: $allowSms, hasHealthPlan: $hasHealthPlan, activeAccount: $activeAccount, comorbidities: $comorbidities, specialConditions: $specialConditions, status: $status)';
}


}

/// @nodoc
abstract mixin class $PatientCopyWith<$Res>  {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) _then) = _$PatientCopyWithImpl;
@useResult
$Res call({
 String id, String name, String cpf, String email, String gender, String phone, DateTime birthdate, String cep, String state, String city, String neighborhood, String street, String houseNumber, bool allowSms, bool hasHealthPlan, bool activeAccount, List<Comorbidity>? comorbidities, List<SpecialCondition>? specialConditions, String status
});




}
/// @nodoc
class _$PatientCopyWithImpl<$Res>
    implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._self, this._then);

  final Patient _self;
  final $Res Function(Patient) _then;

/// Create a copy of Patient
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? cpf = null,Object? email = null,Object? gender = null,Object? phone = null,Object? birthdate = null,Object? cep = null,Object? state = null,Object? city = null,Object? neighborhood = null,Object? street = null,Object? houseNumber = null,Object? allowSms = null,Object? hasHealthPlan = null,Object? activeAccount = null,Object? comorbidities = freezed,Object? specialConditions = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,birthdate: null == birthdate ? _self.birthdate : birthdate // ignore: cast_nullable_to_non_nullable
as DateTime,cep: null == cep ? _self.cep : cep // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,neighborhood: null == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,houseNumber: null == houseNumber ? _self.houseNumber : houseNumber // ignore: cast_nullable_to_non_nullable
as String,allowSms: null == allowSms ? _self.allowSms : allowSms // ignore: cast_nullable_to_non_nullable
as bool,hasHealthPlan: null == hasHealthPlan ? _self.hasHealthPlan : hasHealthPlan // ignore: cast_nullable_to_non_nullable
as bool,activeAccount: null == activeAccount ? _self.activeAccount : activeAccount // ignore: cast_nullable_to_non_nullable
as bool,comorbidities: freezed == comorbidities ? _self.comorbidities : comorbidities // ignore: cast_nullable_to_non_nullable
as List<Comorbidity>?,specialConditions: freezed == specialConditions ? _self.specialConditions : specialConditions // ignore: cast_nullable_to_non_nullable
as List<SpecialCondition>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Patient].
extension PatientPatterns on Patient {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Patient value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Patient() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Patient value)  $default,){
final _that = this;
switch (_that) {
case _Patient():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Patient value)?  $default,){
final _that = this;
switch (_that) {
case _Patient() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String cpf,  String email,  String gender,  String phone,  DateTime birthdate,  String cep,  String state,  String city,  String neighborhood,  String street,  String houseNumber,  bool allowSms,  bool hasHealthPlan,  bool activeAccount,  List<Comorbidity>? comorbidities,  List<SpecialCondition>? specialConditions,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Patient() when $default != null:
return $default(_that.id,_that.name,_that.cpf,_that.email,_that.gender,_that.phone,_that.birthdate,_that.cep,_that.state,_that.city,_that.neighborhood,_that.street,_that.houseNumber,_that.allowSms,_that.hasHealthPlan,_that.activeAccount,_that.comorbidities,_that.specialConditions,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String cpf,  String email,  String gender,  String phone,  DateTime birthdate,  String cep,  String state,  String city,  String neighborhood,  String street,  String houseNumber,  bool allowSms,  bool hasHealthPlan,  bool activeAccount,  List<Comorbidity>? comorbidities,  List<SpecialCondition>? specialConditions,  String status)  $default,) {final _that = this;
switch (_that) {
case _Patient():
return $default(_that.id,_that.name,_that.cpf,_that.email,_that.gender,_that.phone,_that.birthdate,_that.cep,_that.state,_that.city,_that.neighborhood,_that.street,_that.houseNumber,_that.allowSms,_that.hasHealthPlan,_that.activeAccount,_that.comorbidities,_that.specialConditions,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String cpf,  String email,  String gender,  String phone,  DateTime birthdate,  String cep,  String state,  String city,  String neighborhood,  String street,  String houseNumber,  bool allowSms,  bool hasHealthPlan,  bool activeAccount,  List<Comorbidity>? comorbidities,  List<SpecialCondition>? specialConditions,  String status)?  $default,) {final _that = this;
switch (_that) {
case _Patient() when $default != null:
return $default(_that.id,_that.name,_that.cpf,_that.email,_that.gender,_that.phone,_that.birthdate,_that.cep,_that.state,_that.city,_that.neighborhood,_that.street,_that.houseNumber,_that.allowSms,_that.hasHealthPlan,_that.activeAccount,_that.comorbidities,_that.specialConditions,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Patient implements Patient {
  const _Patient({required this.id, required this.name, required this.cpf, required this.email, required this.gender, required this.phone, required this.birthdate, required this.cep, required this.state, required this.city, required this.neighborhood, required this.street, required this.houseNumber, required this.allowSms, required this.hasHealthPlan, required this.activeAccount, final  List<Comorbidity>? comorbidities, final  List<SpecialCondition>? specialConditions, required this.status}): _comorbidities = comorbidities,_specialConditions = specialConditions;
  factory _Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);

@override final  String id;
@override final  String name;
@override final  String cpf;
@override final  String email;
@override final  String gender;
@override final  String phone;
@override final  DateTime birthdate;
@override final  String cep;
@override final  String state;
@override final  String city;
@override final  String neighborhood;
@override final  String street;
@override final  String houseNumber;
@override final  bool allowSms;
@override final  bool hasHealthPlan;
@override final  bool activeAccount;
 final  List<Comorbidity>? _comorbidities;
@override List<Comorbidity>? get comorbidities {
  final value = _comorbidities;
  if (value == null) return null;
  if (_comorbidities is EqualUnmodifiableListView) return _comorbidities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<SpecialCondition>? _specialConditions;
@override List<SpecialCondition>? get specialConditions {
  final value = _specialConditions;
  if (value == null) return null;
  if (_specialConditions is EqualUnmodifiableListView) return _specialConditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String status;

/// Create a copy of Patient
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientCopyWith<_Patient> get copyWith => __$PatientCopyWithImpl<_Patient>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatientToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Patient&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cpf, cpf) || other.cpf == cpf)&&(identical(other.email, email) || other.email == email)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.birthdate, birthdate) || other.birthdate == birthdate)&&(identical(other.cep, cep) || other.cep == cep)&&(identical(other.state, state) || other.state == state)&&(identical(other.city, city) || other.city == city)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.street, street) || other.street == street)&&(identical(other.houseNumber, houseNumber) || other.houseNumber == houseNumber)&&(identical(other.allowSms, allowSms) || other.allowSms == allowSms)&&(identical(other.hasHealthPlan, hasHealthPlan) || other.hasHealthPlan == hasHealthPlan)&&(identical(other.activeAccount, activeAccount) || other.activeAccount == activeAccount)&&const DeepCollectionEquality().equals(other._comorbidities, _comorbidities)&&const DeepCollectionEquality().equals(other._specialConditions, _specialConditions)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,cpf,email,gender,phone,birthdate,cep,state,city,neighborhood,street,houseNumber,allowSms,hasHealthPlan,activeAccount,const DeepCollectionEquality().hash(_comorbidities),const DeepCollectionEquality().hash(_specialConditions),status]);

@override
String toString() {
  return 'Patient(id: $id, name: $name, cpf: $cpf, email: $email, gender: $gender, phone: $phone, birthdate: $birthdate, cep: $cep, state: $state, city: $city, neighborhood: $neighborhood, street: $street, houseNumber: $houseNumber, allowSms: $allowSms, hasHealthPlan: $hasHealthPlan, activeAccount: $activeAccount, comorbidities: $comorbidities, specialConditions: $specialConditions, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PatientCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$PatientCopyWith(_Patient value, $Res Function(_Patient) _then) = __$PatientCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String cpf, String email, String gender, String phone, DateTime birthdate, String cep, String state, String city, String neighborhood, String street, String houseNumber, bool allowSms, bool hasHealthPlan, bool activeAccount, List<Comorbidity>? comorbidities, List<SpecialCondition>? specialConditions, String status
});




}
/// @nodoc
class __$PatientCopyWithImpl<$Res>
    implements _$PatientCopyWith<$Res> {
  __$PatientCopyWithImpl(this._self, this._then);

  final _Patient _self;
  final $Res Function(_Patient) _then;

/// Create a copy of Patient
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? cpf = null,Object? email = null,Object? gender = null,Object? phone = null,Object? birthdate = null,Object? cep = null,Object? state = null,Object? city = null,Object? neighborhood = null,Object? street = null,Object? houseNumber = null,Object? allowSms = null,Object? hasHealthPlan = null,Object? activeAccount = null,Object? comorbidities = freezed,Object? specialConditions = freezed,Object? status = null,}) {
  return _then(_Patient(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,birthdate: null == birthdate ? _self.birthdate : birthdate // ignore: cast_nullable_to_non_nullable
as DateTime,cep: null == cep ? _self.cep : cep // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,neighborhood: null == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,houseNumber: null == houseNumber ? _self.houseNumber : houseNumber // ignore: cast_nullable_to_non_nullable
as String,allowSms: null == allowSms ? _self.allowSms : allowSms // ignore: cast_nullable_to_non_nullable
as bool,hasHealthPlan: null == hasHealthPlan ? _self.hasHealthPlan : hasHealthPlan // ignore: cast_nullable_to_non_nullable
as bool,activeAccount: null == activeAccount ? _self.activeAccount : activeAccount // ignore: cast_nullable_to_non_nullable
as bool,comorbidities: freezed == comorbidities ? _self._comorbidities : comorbidities // ignore: cast_nullable_to_non_nullable
as List<Comorbidity>?,specialConditions: freezed == specialConditions ? _self._specialConditions : specialConditions // ignore: cast_nullable_to_non_nullable
as List<SpecialCondition>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
