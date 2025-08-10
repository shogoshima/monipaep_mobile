// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Usm _$UsmFromJson(Map<String, dynamic> json) => _Usm(
  id: json['id'] as String,
  name: json['name'] as String,
  state: json['state'] as String,
  city: json['city'] as String,
  neighborhood: json['neighborhood'] as String,
  street: json['street'] as String?,
  number: json['number'] as String?,
  weekdayDescriptions:
      (json['weekdayDescriptions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
);

Map<String, dynamic> _$UsmToJson(_Usm instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'state': instance.state,
  'city': instance.city,
  'neighborhood': instance.neighborhood,
  'street': instance.street,
  'number': instance.number,
  'weekdayDescriptions': instance.weekdayDescriptions,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
