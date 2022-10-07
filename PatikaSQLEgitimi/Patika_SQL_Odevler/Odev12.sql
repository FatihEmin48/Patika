--film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT (*) FROM film
WHERE length > (SELECT AVG(length) FROM film);

--film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT (*) FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

--film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT title FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film) 
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

--payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
Select c.customer_id, c.first_name, COUNT(*) from payment p
Inner Join customer c ON p.customer_id = c.customer_id
Group By c.customer_id
Order By COUNT(*) DESC;