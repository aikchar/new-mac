Link git-prompt.sh in this directory to ~/.git-prompt.sh.

Idea is to source this file from a git repo.

        $ ln -s ~/config/git/git-prompt.sh ~/.git-prompt.sh

Link gitconfig in this directory to ~/.gitconfig.

        $ ln -s ~/config/git/gitconfig ~/.gitconfig

Link gitmessage in this directory to ~/.gitmessage.

        $ ln -s ~/config/git/gitmessage ~/.gitmessage

Disable tracking of local changes to these files by git (https://stackoverflow.com/a/26854768):

        $ git update-index --assume-unchanged ./gitconfig
        $ git update-index --assume-unchanged ./gitmessage
        $ git update-index --assume-unchanged ../iterm2/com.googlecode.iterm2.plist

To enable tracking local changes when you really need to,

        $ git update-index --no-assume-unchanged ./gitconfig
        $ git update-index --no-assume-unchanged ./gitmessage
        $ git update-index --no-assume-unchanged ../iterm2/com.googlecode.iterm2.plist
