# Content Filter API - Ruby Gem

Content Filter checks URLs against a comprehensive blocklist of 200,000+ domains categorized as ads-malware, fake news, gambling, adult content, or social media. Returns the specific category for blocked domains, plus every category a domain appears in across a 1.7M-domain index.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_contentfilter'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_contentfilter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_contentfilter'

# Initialize the client
client = APIVerve::Contentfilter::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ url: "https://www.pornhub.com/video/123" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ url: "https://www.pornhub.com/video/123" })
  puts response["data"]
rescue APIVerve::Contentfilter::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Contentfilter::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Contentfilter::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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
    "safetyRating": "unsafe",
    "categories": [
      "porn"
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/contentfilter?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/contentfilter?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/contentfilter?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
