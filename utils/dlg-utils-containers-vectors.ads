with Ada.Finalization;
with Ada.Unchecked_Deallocation;
with Ada.Iterator_Interfaces;

package Dlg.Utils.Containers.Vectors is

   type Vector is private;
   type Cursor is private;
   procedure Append (V : in out Vector; E : Element);
   function In_Range (C : Cursor) return Boolean;
   package Vector_Iterators is new Ada.Iterator_Interfaces
      (Cursor => Cursor, Has_Element => In_Range);

private

   type Vector_Storage is array (Index range <>) of Element;
   type Vector_Storage_Ref is access Vector_Storage;
   type Vector is new Ada.Finalization.Controlled with
      record
         Data : Vector_Storage_Ref := new Vector_Storage (0 .. 7);
         Size : Index := 0;
      end record;
   type Cursor is record
      V : access Vector;
      I : Index;
   end record;
   procedure Free is new Ada.Unchecked_Deallocation
      (Vector_Storage, Vector_Storage_Ref);
   procedure Finalize (V : in out Vector);

end Dlg.Utils.Containers.Vectors;
