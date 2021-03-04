with Dlg.Utils.Containers.Vectors;
with Dlg.Utils.Testsuites;

procedure Main is
   package Dut renames Dlg.Utils.Containers;
   Vec : Dut.Vectors.Vector;
   type My_Elem is new Dut.Element_Tag with
      record
         I : Integer;
      end record;
   type Elem_Storage is array (Integer range 0 .. 5) of aliased My_Elem;
   Some_Elems : Elem_Storage :=
      ((I => 0), (I => 10), (I => 15),
      (I => 332), (I => 51), (I => 22));
begin
   for E of Some_Elems loop
      Dut.Vectors.Append (Vec, E'Unchecked_Access);
   end loop;

   Dlg.Utils.Testsuites.Go;
end Main;
