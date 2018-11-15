CREATE TABLE team_stats (
 id VARCHAR(30) PRIMARY KEY NOT NULL,
 team_name VARCHAR(50) NOT NULL,
 scrape_date DATETIME,
 games_played INTEGER(4),
 goals INTEGER(4),
 assists INTEGER(4),
 shots INTEGER(4),
 shots_on_goal INTEGER(4),
 fouls_committed INTEGER(4),
 fouls_suffered INTEGER(4),
 offsides INTEGER(4),
 corner_kicks INTEGER(4),
 penalty_goal_kicks INTEGER(4),
 penalty_kick_attempts INTEGER(4)
);

CREATE TABLE players (
 id INTEGER(11) PRIMARY KEY NOT NULL,
 first_name VARCHAR(100),
 last_name VARCHAR(100)
);

CREATE TABLE player_info ( 
 id INTEGER(11) NOT NULL,
 player_id INTEGER(11),
 team_id VARCHAR(30),
 year INTEGER(4),
 position VARCHAR(100),
 base_salary INTEGER(11),
 guaranteed_compensation INTEGER(11),
 PRIMARY KEY (id), 
 FOREIGN KEY (player_id) REFERENCES players(id),
 FOREIGN KEY (team_id) REFERENCES team_stats(id)
);