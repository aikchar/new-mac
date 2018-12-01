These settings need to be modified in *user_settings.json* between macOS
and Linux:

- editor.fontFamily
- editor.fontSize
- git.path
- terminal.external.osxExec

Edit _extensions_ file to choose the extensions you want installed. The
_extensions_ file can be created with:

        $ code --list-extensions | sort -f > extensions

Then run (only macOS is supported),

        $ make init

On Linux, the path to _settings.json_ is different from macOS. On Linux, Open
*Preferences* -> *Settings* in Visual Studio Code and copy/paste the contents
of *user_settings.json* in there. Save the settings.
