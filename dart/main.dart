import 'dart:io';

void main() {
  stdout.write("Enter the number of beeps: ");
  int count = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= count; i++) {
    print("Beep number: $i");
    stdout.write('\x07');
    sleep(Duration(seconds: 1));
  }
}
