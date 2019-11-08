Create proc UserAddOrEdit
@UserID int,
@FirstName varchar(50),
@LastName varchar(50),
@Contact varchar(50),
@Gender varchar(10),
@Address varchar(250),
@UserName varchar(50),
@Password varchar(50)
AS
 IF @UserID = 0
 begin
  INSERT INTO UserRegistration(FirstName,LastName,Contact,Gender,Address,UserName,Password)
  Values(@FirstName,@LastName,@Contact,@Gender,@Address,@UserName,@Password)
 end
 else
  begin
  
   update UserRegistration
    set
	 FirstName = @FirstName,
	 LastName = @LastName,
	 Contact =  @Contact,
	 Gender = @Gender,
	 Address = @Address,
	 UserName = @UserName,
	 Password = @Password
  end
