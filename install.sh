sudo apt-get update 
sudo apt-get upgrade -y

sudo apt-get install -y zsh npm python-pip glances htop mc 
sudo apt-get install -y zsh-syntax-highlighting
#mkdir -p /usr/local/opt/zplug
#sudo cp -r /home/ubuntu/.zplug/ /usr/local/opt/zplug/
wget https://github.com/Peltoche/lsd/releases/download/0.17.0/lsd_0.17.0_amd64.deb
sudo dpkg -i lsd_0.17.0_amd64.deb
curl https://raw.githubusercontent.com/wallix/awless/master/getawless.sh | bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

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
cp -rufi  ~/iam/.oh-my-zsh/* ./.oh-my-zsh

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
sudo npm install -g spaceship-prompt

cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zdharma/zui.git
sudo apt-get install -y neofetch
cp ~/iam/.zshrc ~/
cp ~/iam/.oh-my-zsh/oh-my-zsh.sh ~/.oh-my-zsh/
chmod +x ~/.oh-my-zsh/oh-my-zsh.sh
#source <(awless completion zsh)

echo "source /usr/local/lib/node_modules/spaceship-prompt/spaceship.zsh" > ~/.zshrc
