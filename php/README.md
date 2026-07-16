# Content Filter API - PHP Package

Content Filter checks URLs against a comprehensive blocklist of 200,000+ domains categorized as ads-malware, fake news, gambling, adult content, or social media. Returns the specific category for blocked domains.

## Installation

Install via Composer:

```bash
composer require apiverve/contentfilter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Contentfilter\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['url' => 'https://www.pornhub.com/video/123']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Contentfilter\Client;
use APIVerve\Contentfilter\Exceptions\APIException;
use APIVerve\Contentfilter\Exceptions\ValidationException;

try {
    $response = $client->execute(['url' => 'https://www.pornhub.com/video/123']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/contentfilter?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/contentfilter?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/contentfilter?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
