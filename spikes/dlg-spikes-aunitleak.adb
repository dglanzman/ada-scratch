with AUnit.Assertions;
with AUnit.Reporter.Text;

package body Dlg.Spikes.Aunitleak is

   procedure Set_Up (T : in out Two_And_Two) is
   begin
      T.Lhs := 2;
      T.Rhs := 2;
   end Set_Up;

   procedure Two_Times_Two (T : in out Two_And_Two) is
      use AUnit.Assertions;
   begin
      Assert (T.Lhs * T.Rhs = 4, "Incorrect multiplication result");
   end Two_Times_Two;

   function Make_Suite return AUnit.Test_Suites.Access_Test_Suite is
      use AUnit.Test_Suites;
      Test_Call : Caller.Test_Case_Access;
   begin
      Test_Call := Caller.Create ("Two Times Two", Two_Times_Two'Access);
      Add_Test (Tests'Access, Test_Call);
      return Tests'Access;
   end Make_Suite;

   procedure Go is
      use AUnit.Reporter.Text;
      Reporter : Text_Reporter;
   begin
      Run_Tests (Reporter);
   end Go;

end Dlg.Spikes.Aunitleak;
