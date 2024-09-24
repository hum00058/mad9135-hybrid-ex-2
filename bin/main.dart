import 'package:hybrid_exercise_2/lucky.dart';

void main(List<String> arguments) {
  for (var item in arguments) {
    var luckyNumber = Lucky().number;
    print('Hello $item, your lucky number is $luckyNumber!');
  }
}
