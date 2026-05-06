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
