.PHONY: unlink kill link backup
PWD := $(shell pwd)

dotfiles = ~/.i3 ~/.i3status.conf ~/.livestreamerrc ~/.muttrc ~/.vim \
			~/.vimrc ~/.gitconfig ~/.xinitrc ~/.Xresources \
			~/.zprofile ~/.zshrc

link: $(dotfiles)
~/.i3: ./.i3
	ln -s $(PWD)/.i3 ~/.i3

~/.i3status.conf: ./.i3status.conf
	ln -s $(PWD)/.i3status.conf ~/.i3status.conf

~/.livestreamerrc: ./.livestreamerrc
	ln -s $(PWD)/.livestreamerrc ~/.livestreamerrc

~/.muttrc: ./.muttrc
	ln -s $(PWD)/.muttrc ~/.muttrc

~/.vim: ./.vim
	ln -s $(PWD)/.vim ~/.vim

~/.vimrc: ./.vimrc
	ln -s $(PWD)/.vimrc ~/.vimrc

~/.gitconfig: ./.gitconfig
	ln -s $(PWD)/.gitconfig ~/.gitconfig

~/.xinitrc: ./.xinitrc
	ln -s $(PWD)/.xinitrc ~/.xinitrc

~/.Xresources: ./.Xresources
	ln -s $(PWD)/.Xresources ~/.Xresources

~/.zprofile: ./.zprofile
	ln -s $(PWD)/.zprofile ~/.zprofile

~/.zshrc: ./.zshrc
	ln -s $(PWD)/.zshrc ~/.zshrc

unlink:
	for file in $(dotfiles); do if test -L \$file; then rm ~/\$file; fi; done;

kill:
	rm -rf $(dotfiles)

backup:
	if [ ! -d .backup ]; then mkdir .backup; fi
	find ~ -maxdepth 1 -type f -or -type d -name '.*' | xargs -I % cp -rv % $(PWD)/.backup
