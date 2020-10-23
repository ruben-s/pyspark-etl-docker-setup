SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
;

create table public.TestTable(
id int primary key not null,
name text not null,
surname text not null
);

insert into public.testtable (id,name,surname)values(1, 'Ruben', 'Samaey');

select *
from public.testtable;

commit;

select count(rental_id) nr_of_rentals, count(distinct store_id) nr_of_different_stores, customer.first_name, customer.last_name
, cast(date_part('week', rental_date) as INTEGER) month_nr
, cast(date_part('year', rental_date) as INTEGER) year_nr
from rental
join customer on rental.customer_id = customer.customer_id
group by customer.first_name, customer.last_name
, cast(date_part('week', rental_date) as INTEGER)
, cast(date_part('year', rental_date) as INTEGER)
 order by cast(date_part('year', rental_date) as INTEGER), 4, 3, cast(date_part('week', rental_date) as INTEGER), 2 desc, 1 desc
;


select *, cast(date_part('month', rental_date) as INTEGER)
from rental
;