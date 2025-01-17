import 'package:json_annotation/json_annotation.dart';

part 'trail_data.g.dart';

@JsonSerializable()
class TrailData {
  final List<Trail> trails;
  final List<HomepageItem> homepageItems;

  TrailData({
    required this.trails,
    required this.homepageItems,
  });

  factory TrailData.fromJson(Map<String, dynamic> json) => _$TrailDataFromJson(json);
  Map<String, dynamic> toJson() => _$TrailDataToJson(this);
}

@JsonSerializable()
class Trail {
  final String trailName;
  final int totalSites;
  final List<TrailItem> items;

  Trail({
    required this.trailName,
    required this.totalSites,
    required this.items,
  });

  factory Trail.fromJson(Map<String, dynamic> json) => _$TrailFromJson(json);
  Map<String, dynamic> toJson() => _$TrailToJson(this);
}

@JsonSerializable()
class TrailItem {
  final String id;
  final String name;
  final String location;
  final String? address;
  final String? estimatedVisitDuration;
  final String? description;
  final String? imageUrl;
  final List<String>? amenities;
  final List<String>? languages;
  final OpeningHours? openingHours;
  final ContactInfo? contactInfo;
  final bool partOfTrail;

  TrailItem({
    required this.id,
    required this.name,
    required this.location,
    this.address,
    this.estimatedVisitDuration,
    this.description,
    this.imageUrl,
    this.amenities,
    this.languages,
    this.openingHours,
    this.contactInfo,
    required this.partOfTrail,
  });

  factory TrailItem.fromJson(Map<String, dynamic> json) => _$TrailItemFromJson(json);
  Map<String, dynamic> toJson() => _$TrailItemToJson(this);
}

@JsonSerializable()
class HomepageItem {
  final String id;
  final String name;
  final String location;
  final String category;
  final String imageUrl;

  HomepageItem({
    required this.id,
    required this.name,
    required this.location,
    required this.category,
    required this.imageUrl,
  });

  factory HomepageItem.fromJson(Map<String, dynamic> json) => _$HomepageItemFromJson(json);
  Map<String, dynamic> toJson() => _$HomepageItemToJson(this);
}

@JsonSerializable()
class OpeningHours {
  @JsonKey(name: 'Poniedziałek')
  final String? monday;
  @JsonKey(name: 'Wtorek')
  final String? tuesday;
  @JsonKey(name: 'Środa')
  final String? wednesday;
  @JsonKey(name: 'Czwartek')
  final String? thursday;
  @JsonKey(name: 'Piątek')
  final String? friday;
  @JsonKey(name: 'Sobota')
  final String? saturday;
  @JsonKey(name: 'Niedziela')
  final String? sunday;

  OpeningHours({
    this.monday,
    this.tuesday,
    this.wednesday,
    this.thursday,
    this.friday,
    this.saturday,
    this.sunday,
  });

  factory OpeningHours.fromJson(Map<String, dynamic> json) => _$OpeningHoursFromJson(json);
  Map<String, dynamic> toJson() => _$OpeningHoursToJson(this);
}

@JsonSerializable()
class ContactInfo {
  final String? website;
  final String? email;
  final String? phone;

  ContactInfo({this.website, this.email, this.phone});

  factory ContactInfo.fromJson(Map<String, dynamic> json) => _$ContactInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ContactInfoToJson(this);
}
