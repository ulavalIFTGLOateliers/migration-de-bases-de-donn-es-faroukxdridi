ALTER TABLE album DROP FOREIGN KEY FK_A_musicianName;

ALTER TABLE musician DROP FOREIGN KEY fk_musician;

ALTER TABLE musician CHANGE musicianName singerName VARCHAR(50);

ALTER TABLE musician DROP COLUMN role;
ALTER TABLE musician DROP COLUMN bandName;

RENAME TABLE musician TO singer;

DROP TABLE IF EXISTS band;

