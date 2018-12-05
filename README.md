# dotfile
## 配置 zsh & oh-my-zsh & plugin

- macOS Command Line Tools
macOS 下使用命令行的一些命令需要提前安装好`macOS Command Line Tools`
```sh
xcode-select --install
```
- homebrew
```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

- wget & curl
```sh
brew install wget
brew install curl
```

- 安装[git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
安装git 需要在官网下载安装程序，进行图形化安装，比源码安装方便而且高效。


- 安装nvm
```sh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash
```
安装完zsh之后需要在`~/.zshrc`中进行以下配置nvm的环境变量
```sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

```
之后在命令行运行以下命令安装node
```sh
nvm install v8.10.0 # 或其他版本
```
- z shell (zsh)
```sh
brew install zsh
```
配置zsh为默认shell
```sh
# 把 zsh 加入 shell 列表
# sudo sh -c 'echo /usr/local/bin/zsh >> /etc/shells'
# 设置 zsh 为默认 shell
# chsh -s $(which zsh)
chsh -s /bin/zsh
```

- 下载 oh-my-zsh 
通过git安装
```sh
# dowlon 原仓库
git clone --depth=1 git@github.com:robbyrussell/oh-my-zsh.git
# 为了保证版本一致，减少配置过程中可能因为原仓库升级造成的其他问题，可以使用fork过来的仓库
git clone git@github.com:mhy-web/oh-my-zsh.git
```
通过curl或wget安装
```sh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
``


- 下载插件
```sh
# 进入到存放插件的目录
cd $HOME/.oh-my-zsh/custom/plugins
# 安装
git clone --depth=1 git@github.com:zsh-users/zsh-syntax-highlighting.git
git clone --depth=1 git@github.com:zsh-users/zsh-autosuggestions.git
```

```sh
# 或者在任意目录，前提是先配置好.zshrc
git clone --depth=1 git@github.com:zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --depth=1 git@github.com:zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
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


