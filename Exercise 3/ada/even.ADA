with Ada.Text_IO;

procedure Print_Even_Numbers is
begin
   for Num in 1 .. 100 loop
      if Num mod 2 = 0 then
         Ada.Text_IO.Put_Line(Num'Image);
      end if;
   end loop;
end Print_Even_Numbers;