#!/usr/bin/env bash
# File: guessinggame.sh

function get_file_count {
  # Count the number of files (excluding directories)
  echo $(ls -1 | wc -l)
}

file_count=$(get_file_count)
guess=-1

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory? Take a guess:"

while [[ $guess -ne $file_count ]]
do
  read guess
  if [[ $guess -lt $file_count ]]
  then
    echo "Your guess is too low. Try again:"
  elif [[ $guess -gt $file_count ]]
  then
    echo "Your guess is too high. Try again:"
  else
    echo "Congratulations! You guessed correctly!"
  fi
done
