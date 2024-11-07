ELECT 
  `salespeaple`.`snum`,
  `salespeaple`.`comm` * 100 as 'Комм. в %'
FROM
    shop.salespeaple;

/*Добавление текста в результате запроса */
SELECT 
  `salespeaple`.`snum`,
  `salespeaple`.`comm` * 100 as 'Комм. в %', '%'
FROM
    shop.salespeaple;

/*Форматирование отчёта средставми SQL */
SELECT 
'*' as'На дату', sdate as 'Дата', 'обслужено', count(*) 'Количество', 'Заказов'
FROM
    shop.sales
    group by sdate;

/* Использование выражения INTERVAL для указания количества месяцев*/
SELECT 
    MAX(sdate)
FROM
    sales
WHERE
    sdate > '2024-09-01' and sdate < '2024-09-01' + INTERVAL 1 MONTH;

/* Сортировка значений */
SELECT 
    *
FROM
    sales
ORDER BY sdate DESC;

/* Сортировка столбцов с указанием их номера*/
SELECT 
    *
FROM
    sales
ORDER BY 3 DESC , 4;

/**/
SELECT 
    snum, sdate, MAX(amount)
FROM
    sales
GROUP BY snum , sdate
ORDER BY snum , sdate;

/* сортировка по значению, подсчитанному агрегатной функцией */
SELECT 
    snum, sdate, MAX(amount)
FROM
    sales
GROUP BY snum , sdate
ORDER BY snum , 3 DESC;

/* NULL-НАЧЕИЯ и сортировка - MySQL выводит null-значения впереди остальных при сортировке по возрастанию*/
SELECT 
    *
FROM
    shop.customers
ORDER BY rating;








