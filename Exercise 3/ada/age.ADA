with Ada.Text_IO;

procedure Check_User_Age is
   User_Age : Integer;
begin
   Ada.Text_IO.Put("Enter your age: ");
   Ada.Text_IO.Get(User_Age);

   if User_Age >= 18 then
      Ada.Text_IO.Put_Line("You are an adult.");
   else
      Ada.Text_IO.Put_Line("You are a minor.");
   end if;
end Check_User_Age;
