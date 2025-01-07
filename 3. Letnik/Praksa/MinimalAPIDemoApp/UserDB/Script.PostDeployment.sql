if not exists (select 1 from dbo.[User])
begin
	insert into dbo.[User] (FirstName, LastName)
	values ('Janez', 'Novak'),
	('Anze', 'Jelenc'),
	('Johan', 'Neki');
end