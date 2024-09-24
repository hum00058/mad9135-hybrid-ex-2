import 'dart:math';
import 'dart:io';

class Lucky {
  late int number;

  Lucky() {
    Map<String, String> envVars = Platform.environment;
    final min = int.parse(envVars['MIN'] ?? '0');
    final max = int.parse(envVars['MAX'] ?? '100');

    final random = Random();
    number = min + random.nextInt(max - min + 1);
  }
}
