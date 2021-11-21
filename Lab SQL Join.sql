-- Lab | SQL Join
-- 1.List number of films per category.
select c.name, c.category_id, count(f.category_id) as 'Nº of films' from sakila.category c
join sakila.film_category f
on c.category_id = f.category_id
group by c.category_id;

-- 2. Display the first and last names, as well as the address, of each staff member.
select s.staff_id, s.first_name, s.last_name, l.address from staff s
join staff_list l
on s.staff_id = l.ID;

-- 3. Display the total amount rung up by each staff member in August of 2005.
select s.staff_id, s.first_name, s.last_name, sum(p.amount) from staff s
join payment p
on s.staff_id = p.staff_id
where p.payment_date between '2005-08-01' and '2005-09-01'
group by s.staff_id;

-- 4. List each film and the number of actors who are listed for that film.
select f.film_id, f.title, count(a.actor_id) as 'Nº of actors in the film' from sakila.film f
join sakila.film_actor a
on f.film_id = a.film_id
group by film_id;

-- 5. Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name.
select c.customer_id, c.first_name, c.last_name, sum(p.amount) as 'Total paid' from customer c
join payment p
on c.customer_id = p.customer_id
group by c.customer_id;



