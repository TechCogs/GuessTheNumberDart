import "dart:math";
import "dart:io";

void main() {
  const VERSION = "1.0";
  print("Welcome to the amazing game of Guess the Number in Dart!");
  print("Version $VERSION");
  print("I'm thinking of a number between 1 and 100...");
  var rand = new Random();
  var number = rand.nextInt(100) + 1;
  var guess = 0;
  var tries = 0;
  print("Got it.");
  while (guess != number && tries != 10) {
    stdout.write("Enter your guess>");
    try {
      guess = int.parse(stdin.readLineSync());
    }
    on Exception {
      print("That's not a valid guess.  Try again.");
      continue;
    }
    if (guess > number) print("The number is lower.");
    else if (guess < number) print("The number is higher.");
    tries++;
  }
  if (guess == number) print("Congratulations!  You guessed the number!");
  else print("Almost!  The number was $number");
}
