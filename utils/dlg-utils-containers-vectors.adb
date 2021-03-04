package body Dlg.Utils.Containers.Vectors is

   procedure Append (V : in out Vector; E : Element) is
      Old_Data : Vector_Storage_Ref;
   begin
      if V.Size < V.Data'Length then
         V.Data (V.Size) := E;
         V.Size := V.Size + 1;
      else
         Old_Data := V.Data;
         V.Data := new Vector_Storage (0 .. V.Size * 2);
         V.Data (Old_Data'Range) := Old_Data (Old_Data'Range);
         Free (Old_Data);
      end if;
   end Append;

   procedure Finalize (V : in out Vector) is
   begin
      Free (V.Data);
   end Finalize;

   function In_Range (C : Cursor) return Boolean is (C.I < C.V.Size);

end Dlg.Utils.Containers.Vectors;
