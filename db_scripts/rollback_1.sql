ALTER TABLE musician CHANGE musicianName singerName VARCHAR(50);

ALTER TABLE musician DROP COLUMN role;
ALTER TABLE musician DROP COLUMN bandName;

RENAME TABLE musician TO singer;

DROP TABLE IF EXISTS band;