--drop database if exists freetoursegoviav5;--
--create database freetoursegoviav5;--

use freetoursegoviav5;

-- drop table if exists tour; --
create table if not exists tour(

    tour_id     int primary key auto_increment,
    name        varchar(255),
    language    varchar(50),
    duration    float,
    price       float not null default 0,
    start_time  varchar(20),
    start_point varchar(255),
    end_point   varchar(255),
    description text


);


-- drop table if exists client; --
create table client
(

    client_id  int primary key auto_increment,
    name       varchar(255),
    surname    varchar(255),
    email      varchar(255),
    phone      varchar(15),
    adults     int,
    children   int,
    comment    text,
    visit_date date,
    tour_id    int,

    foreign key (tour_id) references tour (tour_id)

);


-- drop table if exists availability; --
create table availability
(
    availability_id int primary key auto_increment,
    tour_id         int,
    visit_date      date,
    availability    int,

    foreign key (tour_id) references tour (tour_id)


);



insert into tour
values (1, 'FreeTour', 'Español', 1.5, 0, '11:30', 'Plza del Azoguejo', 'Alcázar', '');

insert into client
values (default, 'Alvaro', 'Cañas', 'alvaro@gmail.com', '606830316', 2, 1, "comentario de prueba", '2021-08-05', 1);


/*
insert into availability
values (default, 1, '2021-07-01', 21),
       (default, 1, '2021-07-02', 21),
       (default, 1, '2021-07-03', 10),
       (default, 1, '2021-07-04', 10),
       (default, 1, '2021-07-05', 10),
       (default, 1, '2021-07-06', 10),
       (default, 1, '2021-07-07', 10),
       (default, 1, '2021-07-08', 10),
       (default, 1, '2021-07-09', 10),
       (default, 1, '2021-07-10', 10),
       (default, 1, '2021-07-11', 10),
       (default, 1, '2021-07-12', 10),
       (default, 1, '2021-07-13', 10),
       (default, 1, '2021-07-14', 10),
       (default, 1, '2021-07-15', 10),
       (default, 1, '2021-07-16', 10),
       (default, 1, '2021-07-17', 10),
       (default, 1, '2021-07-18', 10),
       (default, 1, '2021-07-19', 10),
       (default, 1, '2021-07-20', 10),
       (default, 1, '2021-07-21', 10),
       (default, 1, '2021-07-22', 10),
       (default, 1, '2021-07-23', 10),
       (default, 1, '2021-07-24', 10),
       (default, 1, '2021-07-25', 10);

*/
/*
drop procedure if exists addDates;

delimiter $$
create procedure addDates(num int, startDate date, tourid int, availability int)
begin

	declare counter int default  0;
    declare newDate date;

    set newDate = startDate;

    while counter < num do
		insert into availability values (default, tourid, newDate, availability);
        set newDate = date_add(newDate, interval 1 day);
        set counter = counter + 1;

	end while;

end $$
delimiter ;


call addDates(77, '2021-07-01', 1, 0);
*/


select *
from availability;
select *
from client;


show tables;

