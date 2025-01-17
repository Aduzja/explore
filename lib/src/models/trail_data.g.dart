// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trail_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrailData _$TrailDataFromJson(Map<String, dynamic> json) => TrailData(
      trailName: json['trailName'] as String,
      totalSites: (json['totalSites'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => TrailItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TrailDataToJson(TrailData instance) => <String, dynamic>{
      'trailName': instance.trailName,
      'totalSites': instance.totalSites,
      'items': instance.items,
    };

TrailItem _$TrailItemFromJson(Map<String, dynamic> json) => TrailItem(
      id: json['id'] as String,
      name: json['name'] as String,
      location: json['location'] as String,
      address: json['address'] as String?,
      estimatedVisitDuration: json['estimatedVisitDuration'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String,
      amenities: (json['amenities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      openingHours: json['openingHours'] == null
          ? null
          : OpeningHours.fromJson(json['openingHours'] as Map<String, dynamic>),
      contactInfo: json['contactInfo'] == null
          ? null
          : ContactInfo.fromJson(json['contactInfo'] as Map<String, dynamic>),
      partOfTrail: json['partOfTrail'] as bool,
    );

Map<String, dynamic> _$TrailItemToJson(TrailItem instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'address': instance.address,
      'estimatedVisitDuration': instance.estimatedVisitDuration,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'amenities': instance.amenities,
      'languages': instance.languages,
      'openingHours': instance.openingHours,
      'contactInfo': instance.contactInfo,
      'partOfTrail': instance.partOfTrail,
    };

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) => OpeningHours(
      monday: json['Poniedziałek'] as String?,
      tuesday: json['Wtorek'] as String?,
      wednesday: json['Środa'] as String?,
      thursday: json['Czwartek'] as String?,
      friday: json['Piątek'] as String?,
      saturday: json['Sobota'] as String?,
      sunday: json['Niedziela'] as String?,
    );

Map<String, dynamic> _$OpeningHoursToJson(OpeningHours instance) =>
    <String, dynamic>{
      'Poniedziałek': instance.monday,
      'Wtorek': instance.tuesday,
      'Środa': instance.wednesday,
      'Czwartek': instance.thursday,
      'Piątek': instance.friday,
      'Sobota': instance.saturday,
      'Niedziela': instance.sunday,
    };

ContactInfo _$ContactInfoFromJson(Map<String, dynamic> json) => ContactInfo(
      website: json['website'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$ContactInfoToJson(ContactInfo instance) =>
    <String, dynamic>{
      'website': instance.website,
      'email': instance.email,
      'phone': instance.phone,
    };
