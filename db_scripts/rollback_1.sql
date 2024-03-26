ALTER TABLE musician DROP FOREIGN KEY fk_band;
ALTER TABLE musician DROP COLUMN role, DROP COLUMN bandName;

ALTER TABLE album DROP FOREIGN KEY fk_musician;
ALTER TABLE album DROP FOREIGN KEY fk_label;
ALTER TABLE album CHANGE musicianName singerName VARCHAR(50);

DROP TABLE IF EXISTS band;

RENAME TABLE musician TO singer;
