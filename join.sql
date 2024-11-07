ELECT 
    cname as 'Фамилия покупателя', sname as 'Фамилия продавца'
FROM
    shop.customers,
    `shop`.`salespeaple`
WHERE
    `customers`.`snum` = `salespeaple`.`snum`;

/* "Естественное" соединение трех таблиц*/    
SELECT 
    `customers`.`cname`,
    `salespeaple`.`sname`,
    `sales`.`sdate`,
    `sales`.`amount`
FROM
    `shop`.`sales`,
    `shop`.`customers`,
    `shop`.`salespeaple`
WHERE
    `sales`.`snum` = `salespeaple`.`snum`
        AND sales.cnum = customers.cnum;

	/* "Неестественное" соединение двух таблиц( без использования ключевых полей)*/
SELECT 
    `customers`.`cname`,
    customers.city,
    `salespeaple`.`sname`,
    salespeaple.city
FROM
    customers,
    salespeaple
WHERE
    customers.city = salespeaple.city
        AND customers.city in ('Новосибирск', 'Санкт-Петербург');
	        
	/* Использование неравенств при соединениях */
SELECT 
    `customers`.`cname`,
    customers.city,
    `salespeaple`.`sname`,
    salespeaple.city
FROM
    customers,
    salespeaple
WHERE
    customers.city < salespeaple.city
        AND rating = 200;

	SELECT 
	    `first`.cname, `second`.cname, `first`.rating
	FROM
	    customers.`first`,
	    customers.`second`
	WHERE
	    `first`.rating = `second`.rating
	        AND `first`.cname < `second`.cname;
		        
		select 
			b.cname as 'Покупатель', a.sname as 'Продавец', b.rating as 'Рейтинг покупателя'
			from 
				salespeaple a, 
					customers b
					where 
						a.snum = b.snum;

						/* Самосоединение для таблицы с циклической зависимостью*/
SELECT 
    f.empno, f.empname, s.empname
FROM
    employee f,
    employee s
WHERE
    f.manager = s.empno;
