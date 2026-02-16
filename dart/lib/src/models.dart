/// Response models for the Content Filter API.

/// API Response wrapper.
class ContentfilterResponse {
  final String status;
  final dynamic error;
  final ContentfilterData? data;

  ContentfilterResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory ContentfilterResponse.fromJson(Map<String, dynamic> json) => ContentfilterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ContentfilterData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
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

  ContentfilterData({
    this.url,
    this.domain,
    this.isBlocked,
    this.category,
    this.matchedDomain,
    this.safetyRating,
  });

  factory ContentfilterData.fromJson(Map<String, dynamic> json) => ContentfilterData(
      url: json['url'],
      domain: json['domain'],
      isBlocked: json['isBlocked'],
      category: json['category'],
      matchedDomain: json['matchedDomain'],
      safetyRating: json['safetyRating'],
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
