// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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

 String get id; String get name; String get cpf; String get email; String get gender; String get phone; bool get allowSms; String? get workAddress; String get homeAddress; String get neighborhood; num get houseNumber; bool get hasHealthPlan; DateTime get birthdate; String get status; bool get activeAccount; List<Comorbidity> get comorbidities; List<SpecialCondition> get specialConditions;
/// Create a copy of Patient
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientCopyWith<Patient> get copyWith => _$PatientCopyWithImpl<Patient>(this as Patient, _$identity);

  /// Serializes this Patient to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Patient&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cpf, cpf) || other.cpf == cpf)&&(identical(other.email, email) || other.email == email)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.allowSms, allowSms) || other.allowSms == allowSms)&&(identical(other.workAddress, workAddress) || other.workAddress == workAddress)&&(identical(other.homeAddress, homeAddress) || other.homeAddress == homeAddress)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.houseNumber, houseNumber) || other.houseNumber == houseNumber)&&(identical(other.hasHealthPlan, hasHealthPlan) || other.hasHealthPlan == hasHealthPlan)&&(identical(other.birthdate, birthdate) || other.birthdate == birthdate)&&(identical(other.status, status) || other.status == status)&&(identical(other.activeAccount, activeAccount) || other.activeAccount == activeAccount)&&const DeepCollectionEquality().equals(other.comorbidities, comorbidities)&&const DeepCollectionEquality().equals(other.specialConditions, specialConditions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,cpf,email,gender,phone,allowSms,workAddress,homeAddress,neighborhood,houseNumber,hasHealthPlan,birthdate,status,activeAccount,const DeepCollectionEquality().hash(comorbidities),const DeepCollectionEquality().hash(specialConditions));

@override
String toString() {
  return 'Patient(id: $id, name: $name, cpf: $cpf, email: $email, gender: $gender, phone: $phone, allowSms: $allowSms, workAddress: $workAddress, homeAddress: $homeAddress, neighborhood: $neighborhood, houseNumber: $houseNumber, hasHealthPlan: $hasHealthPlan, birthdate: $birthdate, status: $status, activeAccount: $activeAccount, comorbidities: $comorbidities, specialConditions: $specialConditions)';
}


}

/// @nodoc
abstract mixin class $PatientCopyWith<$Res>  {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) _then) = _$PatientCopyWithImpl;
@useResult
$Res call({
 String id, String name, String cpf, String email, String gender, String phone, bool allowSms, String? workAddress, String homeAddress, String neighborhood, num houseNumber, bool hasHealthPlan, DateTime birthdate, String status, bool activeAccount, List<Comorbidity> comorbidities, List<SpecialCondition> specialConditions
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? cpf = null,Object? email = null,Object? gender = null,Object? phone = null,Object? allowSms = null,Object? workAddress = freezed,Object? homeAddress = null,Object? neighborhood = null,Object? houseNumber = null,Object? hasHealthPlan = null,Object? birthdate = null,Object? status = null,Object? activeAccount = null,Object? comorbidities = null,Object? specialConditions = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,allowSms: null == allowSms ? _self.allowSms : allowSms // ignore: cast_nullable_to_non_nullable
as bool,workAddress: freezed == workAddress ? _self.workAddress : workAddress // ignore: cast_nullable_to_non_nullable
as String?,homeAddress: null == homeAddress ? _self.homeAddress : homeAddress // ignore: cast_nullable_to_non_nullable
as String,neighborhood: null == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String,houseNumber: null == houseNumber ? _self.houseNumber : houseNumber // ignore: cast_nullable_to_non_nullable
as num,hasHealthPlan: null == hasHealthPlan ? _self.hasHealthPlan : hasHealthPlan // ignore: cast_nullable_to_non_nullable
as bool,birthdate: null == birthdate ? _self.birthdate : birthdate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,activeAccount: null == activeAccount ? _self.activeAccount : activeAccount // ignore: cast_nullable_to_non_nullable
as bool,comorbidities: null == comorbidities ? _self.comorbidities : comorbidities // ignore: cast_nullable_to_non_nullable
as List<Comorbidity>,specialConditions: null == specialConditions ? _self.specialConditions : specialConditions // ignore: cast_nullable_to_non_nullable
as List<SpecialCondition>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Patient implements Patient {
  const _Patient({required this.id, required this.name, required this.cpf, required this.email, required this.gender, required this.phone, required this.allowSms, this.workAddress, required this.homeAddress, required this.neighborhood, required this.houseNumber, required this.hasHealthPlan, required this.birthdate, required this.status, required this.activeAccount, required final  List<Comorbidity> comorbidities, required final  List<SpecialCondition> specialConditions}): _comorbidities = comorbidities,_specialConditions = specialConditions;
  factory _Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);

@override final  String id;
@override final  String name;
@override final  String cpf;
@override final  String email;
@override final  String gender;
@override final  String phone;
@override final  bool allowSms;
@override final  String? workAddress;
@override final  String homeAddress;
@override final  String neighborhood;
@override final  num houseNumber;
@override final  bool hasHealthPlan;
@override final  DateTime birthdate;
@override final  String status;
@override final  bool activeAccount;
 final  List<Comorbidity> _comorbidities;
@override List<Comorbidity> get comorbidities {
  if (_comorbidities is EqualUnmodifiableListView) return _comorbidities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comorbidities);
}

 final  List<SpecialCondition> _specialConditions;
@override List<SpecialCondition> get specialConditions {
  if (_specialConditions is EqualUnmodifiableListView) return _specialConditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specialConditions);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Patient&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cpf, cpf) || other.cpf == cpf)&&(identical(other.email, email) || other.email == email)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.allowSms, allowSms) || other.allowSms == allowSms)&&(identical(other.workAddress, workAddress) || other.workAddress == workAddress)&&(identical(other.homeAddress, homeAddress) || other.homeAddress == homeAddress)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.houseNumber, houseNumber) || other.houseNumber == houseNumber)&&(identical(other.hasHealthPlan, hasHealthPlan) || other.hasHealthPlan == hasHealthPlan)&&(identical(other.birthdate, birthdate) || other.birthdate == birthdate)&&(identical(other.status, status) || other.status == status)&&(identical(other.activeAccount, activeAccount) || other.activeAccount == activeAccount)&&const DeepCollectionEquality().equals(other._comorbidities, _comorbidities)&&const DeepCollectionEquality().equals(other._specialConditions, _specialConditions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,cpf,email,gender,phone,allowSms,workAddress,homeAddress,neighborhood,houseNumber,hasHealthPlan,birthdate,status,activeAccount,const DeepCollectionEquality().hash(_comorbidities),const DeepCollectionEquality().hash(_specialConditions));

@override
String toString() {
  return 'Patient(id: $id, name: $name, cpf: $cpf, email: $email, gender: $gender, phone: $phone, allowSms: $allowSms, workAddress: $workAddress, homeAddress: $homeAddress, neighborhood: $neighborhood, houseNumber: $houseNumber, hasHealthPlan: $hasHealthPlan, birthdate: $birthdate, status: $status, activeAccount: $activeAccount, comorbidities: $comorbidities, specialConditions: $specialConditions)';
}


}

/// @nodoc
abstract mixin class _$PatientCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$PatientCopyWith(_Patient value, $Res Function(_Patient) _then) = __$PatientCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String cpf, String email, String gender, String phone, bool allowSms, String? workAddress, String homeAddress, String neighborhood, num houseNumber, bool hasHealthPlan, DateTime birthdate, String status, bool activeAccount, List<Comorbidity> comorbidities, List<SpecialCondition> specialConditions
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? cpf = null,Object? email = null,Object? gender = null,Object? phone = null,Object? allowSms = null,Object? workAddress = freezed,Object? homeAddress = null,Object? neighborhood = null,Object? houseNumber = null,Object? hasHealthPlan = null,Object? birthdate = null,Object? status = null,Object? activeAccount = null,Object? comorbidities = null,Object? specialConditions = null,}) {
  return _then(_Patient(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,allowSms: null == allowSms ? _self.allowSms : allowSms // ignore: cast_nullable_to_non_nullable
as bool,workAddress: freezed == workAddress ? _self.workAddress : workAddress // ignore: cast_nullable_to_non_nullable
as String?,homeAddress: null == homeAddress ? _self.homeAddress : homeAddress // ignore: cast_nullable_to_non_nullable
as String,neighborhood: null == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String,houseNumber: null == houseNumber ? _self.houseNumber : houseNumber // ignore: cast_nullable_to_non_nullable
as num,hasHealthPlan: null == hasHealthPlan ? _self.hasHealthPlan : hasHealthPlan // ignore: cast_nullable_to_non_nullable
as bool,birthdate: null == birthdate ? _self.birthdate : birthdate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,activeAccount: null == activeAccount ? _self.activeAccount : activeAccount // ignore: cast_nullable_to_non_nullable
as bool,comorbidities: null == comorbidities ? _self._comorbidities : comorbidities // ignore: cast_nullable_to_non_nullable
as List<Comorbidity>,specialConditions: null == specialConditions ? _self._specialConditions : specialConditions // ignore: cast_nullable_to_non_nullable
as List<SpecialCondition>,
  ));
}


}

// dart format on
