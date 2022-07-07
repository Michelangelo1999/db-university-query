-- Contare quanti iscritti ci sono stati ogni anno (la data di iscrizione sulla tabella students è enrolment_date)
select year(s.enrolment_date), COUNT(id) as numero_iscrizioni
from students s 
group by YEAR(s.enrolment_date)
order by YEAR(s.enrolment_date) DESC;

-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
select s.name, s.surname
from students s join degrees d 
on s.degree_id = d.id
where lower(d.name) like 'corso di laurea in economia'
order by s.surname ASC;

-- Selezionare tutti i corsi in cui insegna Fulvio Amato
select t.name, t.surname, c.name 
from course_teacher ct join teachers t 
on ct.teacher_id = t.id
join courses c 
on c.id = ct.course_id
where LOWER(t.name) like 'fulvio' and lower(t.surname) like 'amato' 
order by t.name asc;

-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
select s.surname, s.name, d.name as corso_di_laurea, d.level as livello, d2.name as dipartimento
from students s join degrees d
on s.degree_id = d.id
join departments d2 join degrees d3 
on d3.department_id = d2.id
order by s.surname, s.name ASC;

-- Contare quanti corsi di laurea ci sono per ogni dipartimento e mostrare nome dipartimento e numero di corsi
select d.name as nome_dipartimento, count(d2.id) as numero_corsi
from departments d join degrees d2
on d.id = d2.department_id
group by nome_dipartimento;


