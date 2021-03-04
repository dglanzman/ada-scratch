with AUnit.Reporter.Text;

package body Dlg.Utils.Testsuites is

   function Make_Suite return AUnit.Test_Suites.Access_Test_Suite is
      use AUnit.Test_Suites;
      package Routines renames Dlg.Utils.Tests;
      Tests : Access_Test_Suite := New_Suite;
      Test_Call : Caller.Test_Case_Access;
   begin
      Test_Call := Caller.Create ("Multiply", Routines.Test_Multiply'Access);
      Add_Test (Tests, Test_Call);
      Test_Call := Caller.Create ("Divide", Routines.Test_Divide'Access);
      Add_Test (Tests, Test_Call);
      return Tests;
   end Make_Suite;

   procedure Go is
      use AUnit.Reporter.Text;
      Reporter : Text_Reporter;
   begin
      Run_Tests (Reporter);
   end Go;

end Dlg.Utils.Testsuites;
