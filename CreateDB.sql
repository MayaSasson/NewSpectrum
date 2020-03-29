-- Create Database
CREATE DATABASE NewSpectrumDB;

-- Create tables
CREATE TABLE downloads (
    id SERIAL CONSTRAINT downloads_pk PRIMARY KEY, 
    title CHARACTER VARYING CONSTRAINT title_not_null NOT NULL, 
    file_path CHARACTER VARYING CONSTRAINT file_path_not_null NOT NULL
);

CREATE TABLE categories (
    id SERIAL CONSTRAINT categories_pk PRIMARY KEY, 
    title CHARACTER VARYING CONSTRAINT title_not_null NOT NULL, 
    color CHARACTER VARYING CONSTRAINT color_not_null NOT NULL
);

CREATE TABLE events (
    id SERIAL CONSTRAINT events_pk PRIMARY KEY,
    title CHARACTER VARYING CONSTRAINT title_not_null NOT NULL,
    start_date DATE CONSTRAINT start_date_not_null NOT NULL,
    end_date DATE CONSTRAINT end_date_not_null NOT NULL,
    category INTEGER CONSTRAINT category_fk REFERENCES categories(id)
);

CREATE TABLE users (
    id SERIAL CONSTRAINT users_pk PRIMARY KEY,
    name CHARACTER VARYING CONSTRAINT name_not_null NOT NULL,
    user_name CHARACTER VARYING CONSTRAINT user_name_not_null NOT NULL,
    password CHARACTER VARYING CONSTRAINT password_not_null NOT NULL,
    birthday DATE CONSTRAINT birthday_not_null NOT NULL,
    last_food_order DATE
);

-- Insert data
INSERT INTO downloads(title, file_path)
VALUES ('מק פורק', 'path/to/file'),
       ('טופס חו"ל', 'path/to/file'),
       ('יציאה לתגלית', 'path/to/file'),
       ('הוצאת נשק מהבסיס', 'path/to/file'),
       ('החזרי נסיעות', 'path/to/file');

INSERT INTO categories(title, color) 
VALUES ('ימי הולדת', 'rgb(226, 240, 217)'),
       ('פגישה מדורית', 'rgb(251, 229, 214)'),
       ('חג/חופשה', 'rgb(218, 227, 243)'),
       ('הענקת דרגה', 'rgb(255, 248, 209)');

INSERT INTO events(title, start_date, end_date, category)
VALUES ('הענקת דרגה למניב', '03/29/2020 09:00:00', '03/29/2020 10:00:00', 4),
       ('פסח', '04/08/2020 00:00:00', '04/15/2020 00:00:00', 3),
       ('סטטוס מפעל הספקטרום', '04/16/2020 09:00:00', '04/16/2020 10:00:00', 2);

INSERT INTO users(name, user_name, password, birthday)
VALUES ('רועי רום', 'roeirom', 'rr123456', '06/18/2000 00:00:00'),
       ('מאיה ששון', 'mayasasson', 'ms123456', '05/14/1999 00:00:00'),
       ('רוני שוורץ', 'ronischwartz', 'rs123456', '12/14/2000 00:00:00'),
       ('אוראל לוי קרוואני', 'orelkaravani', 'ok123456', '12/17/1993 00:00:00'),
       ('רועי מניב', 'roymaniv', 'rm123456', '07/05/2000 00:00:00');