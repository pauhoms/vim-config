<p><h1 align="center"> 👩‍💻👩‍💻 My vim configuration 👩‍💻👩‍💻 </h1><br></p>

## Instalation guide
- Install in debian and derivatives ➡️  `sudo apt-get install neovim`

## Plugin Manager
Now we have installed our editor, now we would have to install our plugin manager.
- Install Plug-vim  ➡️  `sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ 
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`

## Clone my vim configuration
- Delete the default vim config ➡️ `sudo rm -rf ~/.conf/nvim/` 
- Clone my vim configuration ➡️ `git clone https://github.com/pauhoms/vim-config.git ~/.conf/nvim/`

## Install node for my main plugin COC
- Install nodejs ➡️ `sudo apt install npm`

## Install all plugins
- First you have to open the neovim ➡️ `nvim .`
- Then you have to execute the following command ➡️ `:PlugInstall`
<br>
Vim should have opened a new tab for us to install the plugins that are defined in vim's configuration
