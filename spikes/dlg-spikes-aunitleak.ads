with AUnit;
with AUnit.Test_Fixtures;
with AUnit.Test_Caller;
with AUnit.Test_Suites;
with AUnit.Run;

package Dlg.Spikes.Aunitleak is

   type Two_And_Two is new AUnit.Test_Fixtures.Test_Fixture with
      record
         Lhs : Integer;
         Rhs : Integer;
      end record;

   procedure Set_Up (T : in out Two_And_Two);
   procedure Two_Times_Two (T : in out Two_And_Two);

   package Caller is new AUnit.Test_Caller (Two_And_Two);
   function Make_Suite return AUnit.Test_Suites.Access_Test_Suite;
   procedure Run_Tests is new AUnit.Run.Test_Runner (Make_Suite);
   procedure Go;

   Tests : aliased AUnit.Test_Suites.Test_Suite;

end Dlg.Spikes.Aunitleak;
