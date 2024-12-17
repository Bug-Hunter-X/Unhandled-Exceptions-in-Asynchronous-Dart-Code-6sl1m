```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      print('Data fetched successfully!');
    } else {
      // Handle error response more gracefully, perhaps by providing more context
      throw Exception('Failed to fetch data: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } catch (e) {
    // Log the error with more detail for debugging purposes
    print('An error occurred in fetchData: $e');
    // Consider providing a more user-friendly message or retry logic in production
    // For this example, we still rethrow to showcase the main function's error handling
    rethrow; 
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    // Handle exceptions from fetchData() more robustly
    print('Error in main: $e');
    // Take appropriate action based on the error -  e.g., display an error message to the user, retry the operation, etc.
  }
}
```