#/bin/bash
# Use colors, but only if connected to a terminal, and that terminal supports them
if which tput >/dev/null 2>&1; then
  ncolors=$(tput colors)
fi

# 检查 安装 xcode-select
if [ which xcode-select >/dev/null 2>&1 ]; then
	echo "install xcode-select....\n";
	xcode-select --install;
fi

# 检查 安装 homebrew
if [ which brew >/dev/null 2>&1 ]; then
	echo "install homebrew....\n";
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
	brew install curl;
	brew isntall wget;
fi

# 安装nvm
if [ which curl >/dev/null 2>&1 ]; then
	echo "curl is not installed, now install it....\n"
	brew install curl;
else
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash;
	read -p "now install node? [y/n]  " node
	case $node in:
		[yY])
			echo "install by nvm now, please what version you want to install, like 8.10.0"
			read -p "node version just like 8.10.0: " vnode
			nvm install $vnode
			;;
		[nN])
			echo "don't install nodejs now, you can install ite later..."
			;;
			*)
	esac
fi

# z shell
if [ which zsh >/dev/null 2>&1 ]; then
	echo "install zsh now ...."
	brew install zsh
	if [ $? === 0 ]; then
		echo "set zsh to default need root access, please input the password of your Mac! \n"
		chsh -s /bin/zsh
	fi
fi

# oh-my-zsh
if [ curl --version ]; then
	echo "install oh-my-zsh now..."
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else 
	echo "isntall curl by brew"
	brew install curl
fi

# install zsh plugin
if [ ]


zshhome = "$HOME/.oh-my-zsh/"
if [ -d ${zshhome}/custom/plugins ]; then
	cd ${zshhome}/custom/plugins;
	git clone --depth=1 git@github.com:zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
	git clone --depth=1 git@github.com:zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions;
	cd ${HOME} &&	brew install autojump;
fi


# # config zshrc
# if [ -d "${zshhome}" ]; then

# fi

# 下载自定义初始化仓库 
repo = "git@github.com:mhy-web/dotfile.git"
if [ which git ]; then
	git clone --depth=1 ${repo};
	dotfile = ${HOME}/dotfile;
	if [ -d $dotfile ]; then
		cp -f ${dotfile}/.zshrc ${HOME}/.zshrc;
		cp -f ${dotfile}/.vimrc ${HOME}/.vimrc;
		cp -d ${dotfile}/vim     ${HOME}/;
		cp -d ${dotfile}/bin/*  ${HOME}/bin/
	fi
fi

source ${HOME}/.zshrc

























	
	
