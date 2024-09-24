import 'dart:math';
import 'dart:io';

final random = Random();

class Lucky {
  late int number;

  Lucky() {
    Map<String, String> envVars = Platform.environment;
    number = int.parse(envVars['MIN'] ?? '0') +
        random.nextInt(int.parse(envVars['MAX'] ?? '100') -
            int.parse(envVars['MIN'] ?? '0') +
            1);
  }
}
