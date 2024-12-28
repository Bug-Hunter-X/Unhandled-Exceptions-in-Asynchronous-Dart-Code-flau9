```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // ... use jsonData ...
      } on FormatException catch (e) {
        print('Error: Invalid JSON format - $e');
      } catch (e) {
        print('Error decoding JSON: $e');
      }
    } else {
      print('Error: HTTP request failed with status code: ${response.statusCode}. Response Body: ${response.body}');
      // Optionally throw an exception to be handled higher up
      //throw Exception('HTTP request failed');
    }
  } on http.ClientException catch (e) {
    print('Error: Network error - $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
    //rethrow;
  }
}
```