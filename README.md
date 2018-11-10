# ETL_MLSData

## Team Members:
  * Sabrina
  * Ben
  * Olivia

## Project Overview:
Extract, transform, and load data on MLS soccer team stats and player salaries

## Data Sources:
  * Team stats - scorespro.com current win/loss/draw data (scraped table)
  * Player salaries - kaggle.com CSV dataset

## Table Structure*:
  * team_stats - team win/loss/draw data including team name and team id (primary key)
  * players - player name and player id (primary key)
  * player_info - player id (foreign key to players table), year, team id (foreign key to team_stats table), salary, position

*Player name/id and player information are separated into two tables because the team, position, and salary data can be updated annually (year field in player_info table).  Therefore, there is a one-to-many relationship between the players table and player_info table