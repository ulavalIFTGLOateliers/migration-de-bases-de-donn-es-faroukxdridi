RENAME TABLE singer TO musician;

CREATE TABLE band (
    bandName VARCHAR(50),
    creation YEAR,
    genre VARCHAR(50)
);

ALTER TABLE band
ADD PRIMARY KEY (bandName);


INSERT INTO band (bandName, creation, genre) VALUES
('Crazy Duo', 2015, 'rock'),
('Luna', 2009, 'classical'),
('Mysterio', 2019, 'pop');

ALTER TABLE album
    CHANGE singerName musicianName VARCHAR(50);

ALTER TABLE album
    ADD CONSTRAINT fk_musician
    FOREIGN KEY (musicianName) REFERENCES musician(musicianName);

ALTER TABLE album
    ADD CONSTRAINT fk_label
    FOREIGN KEY (labelName) REFERENCES label(labelName);

ALTER TABLE musician
    ADD COLUMN role VARCHAR(50),
    ADD COLUMN bandName VARCHAR(50);

ALTER TABLE musician
    ADD CONSTRAINT fk_band
    FOREIGN KEY (bandName) REFERENCES band(bandName);
