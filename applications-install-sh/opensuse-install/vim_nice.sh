#/bin/bash

[[ ! $(command -v vim) ]] && $install_command vim || echo "vim exist!"
[[ ! $(command -v fzf) ]] && $install_command fzf || echo "fzf exist!"
[[ ! $(command -v ctags) ]] && $install_command ctags || echo "ctags exist!"
[[ ! $(command -v tmux) ]] && $install_command tmux || echo "tmux exist!"
[[ ! $(command -v rofi) ]] && $install_command rofi || echo "rofi exist!"
[[ ! $(command -v cmus) ]] && $install_command cmus || echo "cmus exist!"
[[ ! $(command -v ripgrep) ]] && $install_command ripgrep || echo "ripgrep exist!"

install_oh_my_zsh(){
    [[ ! $(command -v zsh) ]] && $install_command zsh || echo "zsh exist!"
    # sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    chsh -s $(which zsh) $USER
    ZSH_PATH=$HOME/.oh-my-zsh
    ln -s $PWD/applications-install-sh/configs/.zshrc $HOME/.zshrc
    cd $HOME/.oh-my-zsh/plugins
    git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_PATH/plugins/zsh-autosuggestions
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_PATH/themes/spaceship-prompt" --depth=1
    ln -s "$ZSH_PATH/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_PATH/themes/spaceship.zsh-theme" 
    cd $PWD
}

# install_keynav(){
    # $kali_install keynav
    # ln -s $PWD/applications-install-sh/configs/.keynavrc $HOME/.keynavrc
# }

install_oh_my_zsh
# install_keynav

ln -s $PWD/applications-install-sh/configs/.vimrc $HOME/.vimrc
ln -s $PWD/applications-install-sh/configs/.tmux $HOME/.tmux
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
