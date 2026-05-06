import 'package:hello_dart/age.dart';

void main() {
  try {
    calculateAges(42, 21);

    // Error cases (uncomment to test)
    // calculateAges(-10, 20);
    calculateAges(1, 115);
  } catch (e) {
    print('Error: $e');

    if (e.toString().contains('cannot be negative')) {
      print('Hint: Ages must be 0 or greater (e.g., 0, 42, 100).');
    } else if (e.toString().contains('greater than 120')) {
      print('Hint: Ages must be 120 or less (e.g., 0, 42, 100).');
    } else {
      print(
        'Hint: Ages must be integers between 0 and 120 (e.g., 0, 42, 100).',
      );
    }
  }
}
