#!/bin/bash
### Stanislav Sobolev github.com/Jacke 
### Copyright 2020
### <\*/>
helpFunction()
{
   echo ""
   echo "Usage: $0 -a /home/ubuntu"
   echo -e "\t-a Home directory"
   exit 1 # Exit script after printing help
}

while getopts "a:b:c:" opt
do
   case "$opt" in
      a ) parameterA="$OPTARG" ;;
      ? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done

# Print helpFunction in case parameters are empty
if [ -z "$parameterA" ]
then
   echo "Some or all of the parameters are empty";
   helpFunction
fi

sed 's#/Users/stan/'#$paremeterA'/#g' .zshrc

sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y zsh npm python-pip glances htop mc
sudo apt-get install -y zsh-syntax-highlighting

### UI / CLI 
wget https://github.com/Peltoche/lsd/releases/download/0.17.0/lsd_0.17.0_amd64.deb
sudo dpkg -i lsd_0.17.0_amd64.deb
curl https://raw.githubusercontent.com/wallix/awless/master/getawless.sh | bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

### MISC FOR SHELL
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ./oh-my-zsh.sh ~/.oh-my-zsh/
chmod +x ~/.oh-my-zsh/oh-my-zsh.sh
wget https://github.com/wallix/awless/releases/download/v0.1.11/awless-linux-386.tar.gz
tar fx awless-linux-386.tar.gz
sudo cp awless /usr/bin/
sudo apt install thefuck -y
unzip .oh-my-zsh.zip
rm -rf ~/.oh-my-zsh/
mkdir ~/.oh-my-zsh
mv ~/iam/.oh-my-zsh/ ~/
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zdharma/zui.git
sudo apt-get install -y neofetch
cp ~/iam/.zshrc ~/
chmod +x ~/.oh-my-zsh/oh-my-zsh.sh
sudo mkdir -p /usr/local/lib/node_modules/
cd ~/iam/
unzip ~/iam/spaceship-prompt.zip
sudo mv ~/iam/spaceship-prompt/ /usr/local/lib/node_modules/
############################################################################################
echo ""
echo ""
echo "               (  .      )"
echo "           )           (              )"
echo "                 .  '   .   '  .  '  ."
echo "        (    , )       (.   )  (   ',    )"
echo "         .' ) ( . )    ,  ( ,     )   ( ."
echo "      ). , ( .   (  ) ( , ')  .' (  ,    )"
echo "     (_,) . ), ) _) _,')  (, ) '. )  ,. (' )"
echo " jgs^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
############################################################################################

