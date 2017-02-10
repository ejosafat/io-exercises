number := Random value(1, 100) round
guesses := 0
guess := 0
in = File standardInput
while (guesses < 10 and guess != number,
    "Enter your guess" println
    guess := in readLine asNumber
    if (guess < number, "low" println)
    if (guess > number, "high" println)
    if (guess == number, "got it!" println)
    guesses = guesses + 1
)
if (guess != number,
    "sorry number was " print
    number println
)

