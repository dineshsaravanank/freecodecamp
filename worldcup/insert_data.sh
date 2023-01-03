#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
while IFS=, read -r year round winner opponent winner_goals opponent_goals
do
  if [[ $year != "year" ]]
  then
   echo "$($PSQL "INSERT INTO teams (name) VALUES ('$winner'), ('$opponent') ON CONFLICT DO NOTHING")"
   WID=$($PSQL "SELECT team_id FROM teams WHERE name = '$winner'")
   OID=$($PSQL "SELECT team_id FROM teams WHERE name = '$opponent'")
   echo "$($PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($year, '$round', $WID, $OID, $winner_goals, $opponent_goals)")"
  fi
done < ./games.csv
