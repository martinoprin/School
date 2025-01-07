CREATE PROCEDURE [dbo].[spUser_getALL]
AS
begin
	SELECT *
	FROM dbo.[User];
end