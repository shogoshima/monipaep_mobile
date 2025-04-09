// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'viacep.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Viacep {

 String get cep; String get logradouro; String get bairro; String get localidade; String get uf; String get ibge;
/// Create a copy of Viacep
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViacepCopyWith<Viacep> get copyWith => _$ViacepCopyWithImpl<Viacep>(this as Viacep, _$identity);

  /// Serializes this Viacep to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Viacep&&(identical(other.cep, cep) || other.cep == cep)&&(identical(other.logradouro, logradouro) || other.logradouro == logradouro)&&(identical(other.bairro, bairro) || other.bairro == bairro)&&(identical(other.localidade, localidade) || other.localidade == localidade)&&(identical(other.uf, uf) || other.uf == uf)&&(identical(other.ibge, ibge) || other.ibge == ibge));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cep,logradouro,bairro,localidade,uf,ibge);

@override
String toString() {
  return 'Viacep(cep: $cep, logradouro: $logradouro, bairro: $bairro, localidade: $localidade, uf: $uf, ibge: $ibge)';
}


}

/// @nodoc
abstract mixin class $ViacepCopyWith<$Res>  {
  factory $ViacepCopyWith(Viacep value, $Res Function(Viacep) _then) = _$ViacepCopyWithImpl;
@useResult
$Res call({
 String cep, String logradouro, String bairro, String localidade, String uf, String ibge
});




}
/// @nodoc
class _$ViacepCopyWithImpl<$Res>
    implements $ViacepCopyWith<$Res> {
  _$ViacepCopyWithImpl(this._self, this._then);

  final Viacep _self;
  final $Res Function(Viacep) _then;

/// Create a copy of Viacep
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cep = null,Object? logradouro = null,Object? bairro = null,Object? localidade = null,Object? uf = null,Object? ibge = null,}) {
  return _then(_self.copyWith(
cep: null == cep ? _self.cep : cep // ignore: cast_nullable_to_non_nullable
as String,logradouro: null == logradouro ? _self.logradouro : logradouro // ignore: cast_nullable_to_non_nullable
as String,bairro: null == bairro ? _self.bairro : bairro // ignore: cast_nullable_to_non_nullable
as String,localidade: null == localidade ? _self.localidade : localidade // ignore: cast_nullable_to_non_nullable
as String,uf: null == uf ? _self.uf : uf // ignore: cast_nullable_to_non_nullable
as String,ibge: null == ibge ? _self.ibge : ibge // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Viacep implements Viacep {
  const _Viacep({required this.cep, required this.logradouro, required this.bairro, required this.localidade, required this.uf, required this.ibge});
  factory _Viacep.fromJson(Map<String, dynamic> json) => _$ViacepFromJson(json);

@override final  String cep;
@override final  String logradouro;
@override final  String bairro;
@override final  String localidade;
@override final  String uf;
@override final  String ibge;

/// Create a copy of Viacep
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ViacepCopyWith<_Viacep> get copyWith => __$ViacepCopyWithImpl<_Viacep>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ViacepToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Viacep&&(identical(other.cep, cep) || other.cep == cep)&&(identical(other.logradouro, logradouro) || other.logradouro == logradouro)&&(identical(other.bairro, bairro) || other.bairro == bairro)&&(identical(other.localidade, localidade) || other.localidade == localidade)&&(identical(other.uf, uf) || other.uf == uf)&&(identical(other.ibge, ibge) || other.ibge == ibge));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cep,logradouro,bairro,localidade,uf,ibge);

@override
String toString() {
  return 'Viacep(cep: $cep, logradouro: $logradouro, bairro: $bairro, localidade: $localidade, uf: $uf, ibge: $ibge)';
}


}

/// @nodoc
abstract mixin class _$ViacepCopyWith<$Res> implements $ViacepCopyWith<$Res> {
  factory _$ViacepCopyWith(_Viacep value, $Res Function(_Viacep) _then) = __$ViacepCopyWithImpl;
@override @useResult
$Res call({
 String cep, String logradouro, String bairro, String localidade, String uf, String ibge
});




}
/// @nodoc
class __$ViacepCopyWithImpl<$Res>
    implements _$ViacepCopyWith<$Res> {
  __$ViacepCopyWithImpl(this._self, this._then);

  final _Viacep _self;
  final $Res Function(_Viacep) _then;

/// Create a copy of Viacep
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cep = null,Object? logradouro = null,Object? bairro = null,Object? localidade = null,Object? uf = null,Object? ibge = null,}) {
  return _then(_Viacep(
cep: null == cep ? _self.cep : cep // ignore: cast_nullable_to_non_nullable
as String,logradouro: null == logradouro ? _self.logradouro : logradouro // ignore: cast_nullable_to_non_nullable
as String,bairro: null == bairro ? _self.bairro : bairro // ignore: cast_nullable_to_non_nullable
as String,localidade: null == localidade ? _self.localidade : localidade // ignore: cast_nullable_to_non_nullable
as String,uf: null == uf ? _self.uf : uf // ignore: cast_nullable_to_non_nullable
as String,ibge: null == ibge ? _self.ibge : ibge // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
