Bethesda Launcher Quake Redirector [v1.0.0]
============================================

** For the Bethesda Launcher version of Quake Enhanced Re-release (2021) ONLY **

This tool will let you pass arbitrary command-line launch options to the Bethesda Launcher's Quake
Enhanced Re-release (2021), whilst maintaining the ability for it to connect to Bethesda's servers.

---------------------------------------------------------------------------------------------------

Motivation
-----------
The Bethesda Launcher lacks the ability to specify command-line launch options for its games. You
can, however, simply run Quake's EXE (Quake_x64.exe) directly with whatever launch options you want.

However, when the Bethesda Launcher runs Quake_x64.exe, it passes to it special launch options that
are relevant to your particular Bethesda account, for the purposes of authentication. When you try
to run Quake_x64.exe without these special launch options, your Quake will not be able to connect
to Bethesda's servers. This locks you out of the Multiplayer -> Online and Add-Ons menus.

Whilst the special launch options differ for each account, we could conceivably just copy those
that are relevant to our own account and make sure that we always pass them when we manually run
Quake_x64.exe. Unfortunately for us, however, a random authentication token is generated each time
you ask the Bethesda Launcher to run Quake, which the Bethesda servers are expecting. So you cannot
even just copy these special launch options in a static way.

Thus Bethesda Launcher Quake Redirector will do it in a dynamic way. This tool will simply replace
your original Quake_x64.exe with a custom one, which simply forwards all launch options passed to
it to the real Quake exe (which we rename to ORIGINAL_Quake_x64.exe). It then allows you to specify
your own launch options in a config file. Then we can simply run Quake from the Bethesda Launcher.

---------------------------------------------------------------------------------------------------

How to install
---------------

Download Bethesda_Quake_Redirector.zip and extract all of its contents to your main Quake folder.
This defaults to "C:\Program Files (x86)\Bethesda.net Launcher\games\Quake", but it can differ
if you installed Quake or the Bethesda Launcher to a different location.

These files should now exist alongside your original Quake_x64.exe:
* Quake_x64_Redirector.exe (the redirector tool itself)
* Quake_x64_Redirector.ahk (the AutoHotkey source code for the redirector tool)
* Quake_x64.launchoptions (edit this with a text editor to specify your own launch options)
* Quake_x64_Redirector_README.txt (this README file)

Rename your original Quake_x64.exe to ORIGINAL_Quake_x64.exe. You must use this exact filename as
the redirector will need to find it. Then, rename Quake_x64_Redirector.exe to Quake_x64.exe, thus
setting up the redirector tool to take the place of your original Quake EXE.

Set your own custom launch options by opening up Quake_x64.launchoptions with a text editor.
The -skipmovies launch option is set by default, in order to demonstrate how this works.

Then simply run Quake from the Bethesda Launcher as normal.

---------------------------------------------------------------------------------------------------

How to compile
---------------

If you wish to compile your own "Quake_x64_Redirector.exe" from the AutoHotkey source code,
the "Quake_x64_Redirector.ahk" script file is also provided. Thankfully it is quite easy to
do so. First, go to https://www.autohotkey.com/ and install AutoHotkey. Next, right-click on
the "Quake_x64_Redirector.ahk" file provided and choose to compile the script. You can choose
'Compile Script' or 'Compile Script (GUI)'. The first option will simply create the EXE in the
same folder, whereas the GUI allows you to specify where to create the EXE.

It's that easy!
