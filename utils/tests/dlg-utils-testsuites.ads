with Dlg.Utils.Tests;
with AUnit.Test_Caller;
with AUnit.Test_Suites;
with AUnit.Run;

package Dlg.Utils.Testsuites is

   package Caller is new AUnit.Test_Caller (Dlg.Utils.Tests.Fixture);
   function Make_Suite return AUnit.Test_Suites.Access_Test_Suite;
   procedure Run_Tests is new AUnit.Run.Test_Runner (Make_Suite);
   procedure Go;

end Dlg.Utils.Testsuites;
