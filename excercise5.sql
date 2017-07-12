SELECT email 
FROM Account JOIN AddressBook 
ON Account.id = AddressBook.accountId 
WHERE AddressBook.id = 100;

SELECT content
FROM ElectronicMail JOIN Entry
ON Entry.id = ElectronicMail.entryId
WHERE Entry.addressBookId = 100;