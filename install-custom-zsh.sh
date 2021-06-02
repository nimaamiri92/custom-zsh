#!bash
sudo rm   ~/.zshrc \
&& sudo rm -r ~/.oh-my-zsh \
&& sudo apt remove --purge zsh -y \
&& sudo apt install -y zsh &&  \ 
sudo  chsh -s /usr/bin/zsh root \
&& sudo apt install -y curl wget git \
&& wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh \
&& cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
&& cd  /home/nima/.oh-my-zsh/plugins \
&& git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
&& git clone https://github.com/zsh-users/zsh-autosuggestions \
&& sudo sed -i 's/plugins=(git)/plugins=(git laravel docker docker-compose zsh-syntax-highlighting zsh-autosuggestions python django)/' ~/.zshrc \
#&& sudo source ~/.zshrc
