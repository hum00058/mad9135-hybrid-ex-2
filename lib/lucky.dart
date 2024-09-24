import 'dart:math';
import 'dart:io';

final random = Random();

class Lucky {
  late int number;

  Lucky() {
    Map<String, String> envVars = Platform.environment;
    final min = int.parse(envVars['MIN'] ?? '0');
    final max = int.parse(envVars['MAX'] ?? '100');

    number = min + random.nextInt(max - min + 1);
  }
}
