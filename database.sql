CREATE TABLE IF NOT EXISTS path_finder_locations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    x FLOAT NOT NULL,
    y FLOAT NOT NULL,
    z FLOAT NOT NULL
);

INSERT INTO path_finder_locations (name, x, y, z) VALUES
    ('Bank', 149.0, -1040.0, 29.37),
    ('Police Station', 425.1, -979.5, 30.7),
    ('Hospital', 302.0, -596.0, 43.28);