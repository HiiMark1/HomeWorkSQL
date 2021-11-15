create table airport (
id SERIAL PRIMARY KEY,
name VARCHAR(200) NOT NULL,
location VARCHAR(200),
number_of_runway_strip INT NOT NULL
);

create table plane (
id SERIAL PRIMARY KEY,
company VARCHAR(200),
type_plane VARCHAR(200) NOT NULL,
serial_number INT NOT NULL,
capacity INT NOT NULL,
number_of_flights INT NOT NULL
);

create table passenger (
id SERIAL PRIMARY KEY,
fio VARCHAR(200) NOT NULL,
type_of_seat VARCHAR(100) NOT NULL
);

create table crew (
id SERIAL PRIMARY KEY,
fio_pilot1 VARCHAR(200),
fio_pilot2 VARCHAR(200),
fio_stewardess1 VARCHAR(200),
fio_stewardess2 VARCHAR(200),
fio_stewardess3 VARCHAR(200),
fio_stewardess4 VARCHAR(200),
fio_stewardess5 VARCHAR(200),
fio_tech1 VARCHAR(200),
fio_tech2 VARCHAR(200)
);

create table flight (
id SERIAL PRIMARY KEY,
from_airport INT REFERENCES airport(id), 
to_airport INT REFERENCES airport(id), 
id_plane INT REFERENCES plane(id),
id_crew INT REFERENCES crew(id),
duration_in_hours INT NOT NULL,
number_of_passengers INT NOT NULL,
date_flight TIMESTAMP NOT NULL
);

create table passenger_flight (
passenger_id INT REFERENCES passenger(id),
flight_id INT REFERENCES flight(id)
);

INSERT INTO airport VALUES 
(1, 'Sheremetevo', 'Moscow', 10),
(2, 'das Gift', 'Berlin', 8),
(3, 'Capital of GB', 'GB', 10);

INSERT INTO plane VALUES 
(1, 'csd', '132e3', 4234234, 100, 5),
(2, 'Qasad', '4ds6', 5234523, 50, 0),
(3, 'sadsadsa', 'AAAs', 4234, 30, 2);

INSERT INTO passenger VALUES 
(1, 'Petr', 'business class'),
(2, 'Ivan', 'business class');

INSERT INTO crew VALUES 
(1, 'Ivan42', 'Rusladsan', 'sadasdsa', 'Maria', 'Maria', 'Maria', 'Maria', 'Maria', 'Maria'),
(2, 'Maria', 'Maria', 'Maria', 'Maria', 'Maria', 'Maria', 'Maria', 'Maria', 'Maria');

INSERT INTO flight VALUES 
(1, 1, 2, 1, 1, 5, 23, '2020-01-08'),
(2, 2, 3, 1, 1, 10, 71, '2021-02-09'),
(3, 3, 1, 1, 1, 40, 63, '2021-03-10'),
(4, 1, 3, 1, 1, 15, 23, '2019-04-11'),
(5, 3, 1, 1, 1, 11, 17, '2018-05-12'),
(6, 3, 1, 2, 2, 20, 31, '2018-10-18'),
(7, 1, 2, 2, 2, 21, 8, '2017-07-14'),
(8, 2, 3, 2, 2, 1, 10, '2016-08-15'),
(9, 3, 1, 2, 2, 8, 41, '2017-09-16'),
(10, 1, 3, 2, 2, 20, 11, '2018-10-18');

INSERT INTO passenger_flight VALUES 
(1, 1),
(2, 2),
(2, 3);



SELECT * FROM flight
    WHERE duration_in_hours = (SELECT max(duration_in_hours) FROM flight);



SELECT airport.id, COUNT(*) FROM airport 
JOIN flight ON flight.from_airport = airport.id OR flight.to_airport = airport.id 
WHERE date_flight = '2018-10-18'
GROUP BY airport.id;



CREATE VIEW view_flight_passenger
AS SELECT * FROM flight
JOIN passenger_flight ON passenger_flight.flight_id = flight.id;

WITH max_duration AS (
SELECT passenger.fio, SUM(view_flight_passenger.duration_in_hours) FROM view_flight_passenger
JOIN passenger ON view_flight_passenger.passenger_id = passenger.id
GROUP BY passenger.id
)
SELECT * FROM max_duration
WHERE sum = (SELECT max(sum) FROM max_duration);

WITH min_duration AS (
SELECT passenger.fio, SUM(vfp.duration_in_hours) FROM view_flight_passenger AS vfp
JOIN passenger ON vfp.passenger_id = passenger.id
GROUP BY passenger.id
)
SELECT * FROM min_duration
WHERE sum = (SELECT min(sum) FROM min_duration);
