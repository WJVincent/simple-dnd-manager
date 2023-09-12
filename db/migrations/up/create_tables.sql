CREATE TABLE user (
  name TEXT PRIMARY KEY NOT NULL
);

CREATE TABLE class (
  name TEXT PRIMARY KEY NOT NULL
);

CREATE TABLE character (
  name TEXT PRIMARY KEY NOT NULL,
  level INTEGER NOT NULL,
  class TEXT NOT NULL REFERENCES class(name)
);

CREATE TABLE user_character (
  user_name TEXT NOT NULL REFERENCES user(name),
  character_name TEXT NOT NULL REFERENCES character(name)
);
