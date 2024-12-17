```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      print('Data fetched successfully!');
    } else {
      // Handle error response
      throw Exception('Failed to fetch data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network request
    print('An error occurred: $e');
    // Rethrow the exception to be handled by a higher level
    rethrow; 
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    // Handle exceptions from fetchData()
    print('Error in main: $e');
  }
}
```