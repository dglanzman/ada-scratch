with AUnit.Assertions; use AUnit.Assertions;

package body Dlg.Utils.Tests is

   procedure Set_Up (T : in out Fixture) is
   begin
      T.Lhs := 12;
      T.Rhs := 3;
   end Set_Up;

   procedure Test_Multiply (T : in out Fixture) is
   begin
      Assert (T.Lhs * T.Rhs = 36, "Incorrect multiplication result");
   end Test_Multiply;

   procedure Test_Divide (T : in out Fixture) is
   begin
      Assert (T.Lhs / T.Rhs = 4, "Incorrect division result");
   end Test_Divide;

end Dlg.Utils.Tests;
