The *extensions* files is created with:

        $ code --list-extensions | sort > ~/config/vscode/extensions

These settings may need to be modified in *user_settings.json* between macOS
and Linux:

* editor.fontFamily
* editor.fontSize
* git.path
* terminal.external.osxExec

Open *Preferences* -> *Settings* in Visual Studio Code and copy/paste the contents of user_settings.json
in there. Save the settings.
