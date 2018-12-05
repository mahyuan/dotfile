#!/bin/bash
# 自动部署zsh
# 前提： 安装好node, git, brew


sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && ecoo "oh-my-zsh 下载好了，接下来安装插件...."

which git > /dev/null 2>&1

if [ $? == 0 ]; then
	git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/
	git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/
	git clone git@github.com:wting/autojump.git ~/.oh-my-zsh/custom/plugins/

else 
	echo "git 还没有安装啊.... "
fi


