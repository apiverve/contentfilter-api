# Content Filter API - Dart/Flutter Client

Content Filter checks URLs against a comprehensive blocklist of 200,000+ domains categorized as ads-malware, fake news, gambling, adult content, or social media. Returns the specific category for blocked domains.

[![pub package](https://img.shields.io/pub/v/apiverve_contentfilter.svg)](https://pub.dev/packages/apiverve_contentfilter)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Content Filter API](https://apiverve.com/marketplace/contentfilter?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_contentfilter: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_contentfilter/apiverve_contentfilter.dart';

void main() async {
  final client = ContentfilterClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'url': 'https://www.pornhub.com/video/123'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "url": "https://www.pornhub.com/video/123",
    "domain": "www.pornhub.com",
    "isBlocked": true,
    "category": "porn",
    "matchedDomain": "pornhub.com",
    "safetyRating": "unsafe"
  }
}
```

## API Reference

- **API Home:** [Content Filter API](https://apiverve.com/marketplace/contentfilter?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/contentfilter](https://docs.apiverve.com/ref/contentfilter?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
