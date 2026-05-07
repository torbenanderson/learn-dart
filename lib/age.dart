// lib/age.dart

/// Maximum allowed age value
const int maxAge = 120;

/// Minimum allowed age value
const int minAge = 0;

/// Calculates the sum and average of two ages.
///
/// Returns a record containing the sum and average of the ages.
///
/// Parameters:
///   [age1] - First age (must be between [minAge] and [maxAge])
///   [age2] - Second age (must be between [minAge] and [maxAge])
///
/// Returns:
///   A record with named fields [sum] and [average]
///
/// Throws:
///   [ArgumentError] if either age is outside the valid range
/// Validates that an age is within acceptable range
/// 
/// Throws [ArgumentError] if age is outside valid range
void _validateAge(int age, String label) {
  if (age < minAge) {
    print('$label cannot be negative');
    throw ArgumentError('$label cannot be negative');
  } else if (age > maxAge) {
    print('$label cannot be greater than $maxAge');
    throw ArgumentError('$label cannot be greater than $maxAge');
  }
}

/// Calculates sum and average of two ages
/// 
/// Returns a record with named fields
({int sum, double average}) calculateAges(int age1, int age2) {
  // Validate inputs
  _validateAge(age1, 'First age');
  _validateAge(age2, 'Second age');

  // Calculate sum and average
  final sum = age1 + age2;
  final average = sum / 2;

  // Log results (can be removed in production)
  print('Sum: $sum');
  print('Average: $average');
  
  // Return results as a record with named fields
  return (sum: sum, average: average);
}

/// Main demonstration function
/// 
/// Shows proper usage of [calculateAges] and demonstrates error handling
void main() {
  try {
    // Example with valid ages
    calculateAges(42, 21); // Valid case
    
    // Error cases (uncomment to test)
    //calculateAges(-10, 20); // Negative age case
    calculateAges(1, 121); // Age exceeding maximum case
  } catch (e) {
    // Error handling with helpful user feedback
    print('Error: $e');
    
    // Provide specific hints based on the error type
    if (e.toString().contains('cannot be negative')) {
      print('Hint: Ages must be 0 or greater (e.g., 0, 42, 100).');
    } else if (e.toString().contains('greater than 120')) {
      print('Hint: Ages must be 120 or less (e.g., 0, 42, 100).');
    } else {
      // Fallback message for unexpected errors
      print(
          'Hint: Ages must be integers between 0 and 120 (e.g., 0, 42, 100).');
    }
  }
}
