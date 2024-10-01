CREATE PROCEDURE [dbo].[spUser_insert]
	@FirstName nvarchar(50),
	@LastName nvarchar(50)
AS
begin
	INSERT INTO dbo.[User] (FirstName, LastName)
	VALUES(@FirstName, @LastName);
end