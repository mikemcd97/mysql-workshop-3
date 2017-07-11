SELECT email 
FROM Account JOIN AddressBook 
ON Account.id = AddressBook.accountId 
WHERE AddressBook.id = 100;