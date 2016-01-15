## About
Vim 7.4+ Config directory with many usefull plugins.

## Install

 1. Backup your ~/.vim/ directory in case u have such
 2. Clone the repository under your `~/` directory:

         cd ~ && git clone https://github.com/naglik/vimconfig.git .vim --recursive

 3. Source the config files in your `.vimrc`
         
         source ~/.vim/.vimrc.core
         source ~/.vim/.vimrc.common


SHELL:: git config --global core.excludesfile ~/.gitignore
and add:
/tags
/tags.lock
/tags.temp
