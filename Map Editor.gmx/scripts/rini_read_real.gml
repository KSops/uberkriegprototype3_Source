/*
rini_read_real(iniHandle, Section, Key, DefaultVal);

Arguments:
[0]iniHandle:Real = The handle to the ini file (from rini_open())
[1]Section:String = The name of the Section
[2]Key:String = The name of the Key
[3]DefaultVal:Real = Default value to be returned if the entry doesn't exist
Return Value:
returns the value read from the ini file.

Description:
Reads a Real (number) from the ini file.

Notes:
-None-
*/

return external_call(global.INI_DLL_GetKeyVal,argument0,argument1,argument2,string(argument3));
