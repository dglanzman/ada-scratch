with AUnit;
with AUnit.Test_Fixtures;

package Dlg.Utils.Tests is

   type Fixture is new AUnit.Test_Fixtures.Test_Fixture with
      record
         Lhs : Integer;
         Rhs : Integer;
      end record;

   procedure Set_Up (T : in out Fixture);
   procedure Test_Multiply (T : in out Fixture);
   procedure Test_Divide (T : in out Fixture);

end Dlg.Utils.Tests;
