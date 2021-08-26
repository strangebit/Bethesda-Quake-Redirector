#Warn
#NoEnv

SetWorkingDir % A_ScriptDir

LaunchOptionsFile := "Quake_x64.launchoptions"
IniRead, ArgsFromConfig, %LaunchOptionsFile%, Launch, Options

ArgsFromLauncher := " "

for n, Arg in A_Args
    ArgsFromLauncher := ArgsFromLauncher . Arg . " "

Run % A_ScriptDir . "\ORIGINAL_Quake_x64.exe" . ArgsFromLauncher . ArgsFromConfig
