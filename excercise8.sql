SELECT subtype, COUNT(*) 
FROM Phone JOIN Entry
ON Phone.entryId = Entry.id
WHERE (Entry.birthday BETWEEN '1950-10-01' AND '1960-10-01') 
GROUP BY Phone.subtype;