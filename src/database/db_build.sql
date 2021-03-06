BEGIN;

DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS house CASCADE;

CREATE TABLE house (
  id SERIAL PRIMARY KEY,
  house_name VARCHAR(100) NOT NULL,
  attributes VARCHAR NOT NULL,
  total_house_points INTEGER DEFAULT 0
);
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  password VARCHAR,
  house_id INTEGER,
  FOREIGN KEY (house_id) REFERENCES house(id),
  points INTEGER DEFAULT 0
);

INSERT INTO house (house_name, attributes) VALUES
('Gryffindor', 'Brave and bold'),
('Hufflepuff', 'Kind and gentle'),
('Ravenclaw', 'Honest and practical'),
('Slytherin', 'Clever and competitive');

INSERT INTO users (name, house_id, points, password) VALUES
('Jamie', 4, -10, 'jamie123'),
('Alex', 2, 500, 'alexandra123'),
('Rosa', 2, 500, 'rosalie123'),
('Beth', 2, 500, 'bethany123');

COMMIT;
