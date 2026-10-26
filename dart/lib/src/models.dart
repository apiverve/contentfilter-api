/// Response models for the Content Filter API.

/// API Response wrapper.
class ContentfilterResponse {
  final String status;
  final dynamic error;
  final ContentfilterData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  ContentfilterResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory ContentfilterResponse.fromJson(Map<String, dynamic> json) => ContentfilterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ContentfilterData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Content Filter API.

class ContentfilterData {
  String? url;
  String? domain;
  bool? isBlocked;
  String? category;
  String? matchedDomain;
  String? safetyRating;
  List<String>? categories;

  ContentfilterData({
    this.url,
    this.domain,
    this.isBlocked,
    this.category,
    this.matchedDomain,
    this.safetyRating,
    this.categories,
  });

  factory ContentfilterData.fromJson(Map<String, dynamic> json) => ContentfilterData(
      url: json['url'],
      domain: json['domain'],
      isBlocked: json['isBlocked'],
      category: json['category'],
      matchedDomain: json['matchedDomain'],
      safetyRating: json['safetyRating'],
      categories: (json['categories'] as List?)?.cast<String>(),
    );
}

class ContentfilterRequest {
  String url;

  ContentfilterRequest({
    required this.url,
  });

  Map<String, dynamic> toJson() => {
      'url': url,
    };
}
