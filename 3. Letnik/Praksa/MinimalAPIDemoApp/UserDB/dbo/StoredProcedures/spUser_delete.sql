CREATE PROCEDURE [dbo].[spUser_delete]
	@Id int
AS
begin
	DELETE
	FROM dbo.[User]
	WHERE Id = @Id
end