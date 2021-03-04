with System.Storage_Elements;

package Dlg.Utils.Containers is

   type Index is new System.Storage_Elements.Storage_Count;
   type Element_Tag is interface;
   type Element is access all Element_Tag'Class;

end Dlg.Utils.Containers;
