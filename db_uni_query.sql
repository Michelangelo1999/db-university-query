-- QUERY
use universita_costanza;
-- Selezionare il dipartimento il cui capo è Bernardo Sanna
select name
from departments d 
where UPPER(head_of_department) LIKE "BERNARDO SANNA";
-- Selezionare tutti i corsi di laurea magistrale
select name
from degrees d 
where UPPER(d.level) LIKE "MAGISTRALE";
-- Selezionare tutti i corsi che valgono più di 10 crediti
select name 
from courses c 
where c.cfu > 10;
-- Selezionare tutti gli insegnanti che non hanno il numero di telefono
select name, surname
from teachers t 
where phone is null;
-- Selezionare tutti gli studenti che hanno più di 30 anni
select name, surname
from students s 
where TIMESTAMPDIFF(year, date_of_birth, CURDATE()) > 30;
-- Selezionare tutti gli studenti che hanno un indirizzo email gmail o yahoo
select name, surname
from students s 
where upper(email) LIKE "%GMAIL%" or UPPER(email) like ("%YAHOO%");
-- Selezionare tutti gli esami che si sono svolti a luglio 2020
select name
from exams e join courses c 
on e.course_id = c.id 
where e.`date` like ("2020-07-%");

