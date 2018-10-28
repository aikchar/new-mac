Read *Makefile* to figure out what's going on behind the scenes.

Make backups of these files,

- ~/.git-prompt.sh
- ~/.gitconfig
- ~/.gitmessage

Disable tracking of local changes to these files by git (https://stackoverflow.com/a/26854768):

        $ git update-index --assume-unchanged ./gitconfig
        $ git update-index --assume-unchanged ./gitmessage

To enable tracking local changes when you really need to,

        $ git update-index --no-assume-unchanged ./gitconfig
        $ git update-index --no-assume-unchanged ./gitmessage

Edit these files according to your requirements,

- gitconfig
- gitmessage

Then run,

        $ make init
