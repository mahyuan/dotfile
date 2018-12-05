# dotfile
## 配置 zsh & oh-my-zsh & plugin

- 下载 oh-my-zsh 
```sh
# dowlon 原仓库
git clone git@github.com:robbyrussell/oh-my-zsh.git
# 为了保证版本一致，减少配置过程中可能因为原仓库升级造成的其他问题，可以使用fork过来的仓库
git clone git@github.com:mhy-web/oh-my-zsh.git
```


- 下载插件
```sh
# 进入到存放插件的目录
cd $HOME/.oh-my-zsh/custom/plugins
# 安装
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone git://github.com/zsh-users/zsh-autosuggestions
```

```sh
# 或者在任意目录，前提是先配置好.zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

```sh
brew install autojump
# 把下面的代码加入到~/.zshrc
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
```

- 配置vim
确保已经安装了vim，如果没有安装
```sh
brew install vim
```
然后配置.vimrc

