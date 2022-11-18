PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS Games (
  GameId TEXT PRIMARY KEY,
  UserId TEXT NOT NULL,
  Word TEXT NOT NULL,
  MovesCompleted INTEGER DEFAULT 0,
  GameCompleted INTEGER DEFAULT 0,
  FOREIGN KEY(Word) REFERENCES Words(Word)
);

CREATE TABLE IF NOT EXISTS Guesses (
  GuessId TEXT PRIMARY KEY,
  GameId TEXT NOT NULL,
  Guess TEXT NOT NULL,
  Hint TEXT NOT NULL,
  FOREIGN KEY(GameId) REFERENCES Games(GameId)
);

CREATE TABLE IF NOT EXISTS Words (
  Word TEXT PRIMARY KEY,
  Correct INTEGER NOT NULL
);

COMMIT;