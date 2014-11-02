CREATE TABLE butterflies (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT,
	image TEXT,
	family TEXT,
	plant_id INTEGER
);

-- , breaks up part of the statement
-- ; is the end of the statement

INSERT INTO butterflies (id, name, image, family) VALUES (0, 'test', 'test image', 'test family');