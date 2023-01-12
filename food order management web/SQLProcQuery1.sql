
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE Category_Crud
	-- Add the parameters for the stored procedure here
	@Action varchar(10),
	@CategoryId INT=NULL,
	@NAME varchar(100)=NULL,
	@IsActive BIT=FALSE,
	@Imageurl varchar(max) = Null

AS
BEGIN
	
	SET NOCOUNT ON;

	--select
	If @Action = 'Select'
	Begin
	Select * From dbo.categories Order By CreatedDate Desc
	End

	--insert
	If @Action = 'Insert'
	Begin
	INSERT Into dbo.categories(Name, Imageurl, IsActive, CreatedDate)
	Values (@Name, @Imageurl, @IsActive, GetDate())
	End

	
End
Go