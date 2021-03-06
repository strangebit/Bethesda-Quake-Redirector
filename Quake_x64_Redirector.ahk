#Warn
#NoEnv

SetWorkingDir % A_ScriptDir

LaunchOptionsFile := "Quake_x64.launchoptions"
IniRead, RedirectEXE, %LaunchOptionsFile%, Launch, Redirect, ORIGINAL_Quake_x64.exe
IniRead, ArgsFromConfig, %LaunchOptionsFile%, Launch, Options, %A_Space%

ArgsFromLauncher := A_Space

for n, Arg in A_Args
    ArgsFromLauncher := ArgsFromLauncher . Arg . A_Space

Run % RedirectEXE . ArgsFromLauncher . ArgsFromConfig
