create proc UserViewByID
@UserID int
AS
  select * from UserRegistration Where UserID = @UserID