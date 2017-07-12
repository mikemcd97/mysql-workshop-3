SELECT content 
FROM Phone JOIN Entry
ON Phone.EntryId = Entry.id
WHERE Entry.firstName = 'Charlotte' AND Entry.lastName = 'Jenkins';