SELECT country, city 
FROM Address
WHERE country IN ('Canada', 'Ireland', 'Isle of Man', 'Japan', 'Austria')
ORDER BY country;