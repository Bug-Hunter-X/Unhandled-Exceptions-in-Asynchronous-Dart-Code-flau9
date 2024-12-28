```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data successfully
      final jsonData = jsonDecode(response.body);
      // ... use jsonData ...
    } else {
      // Handle error status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network requests or JSON decoding
    print('Error: $e');
    // Consider rethrowing the exception for higher-level handling
    rethrow; 
  }
}
```