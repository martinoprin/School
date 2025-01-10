CREATE PROCEDURE [dbo].[spUser_get]
	@Id int
AS
begin
	SELECT *
	FROM dbo.[User]
	WHERE Id = @Id
end