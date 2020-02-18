-include $(shell curl -sSL -o .build-harness "https://raw.githubusercontent.com/unionpos/build-harness/master/templates/Makefile.build-harness"; echo .build-harness)


current_dir = $(shell pwd)
DOTFILE_NAMES := $(subst ./dotfiles/, , $(shell find ./dotfiles -maxdepth 1 -name ".*"))
DOTFILES := $(addprefix ~/, $(DOTFILE_NAMES))


## install project requirements
bootstrap: init .vars
	-make brew
	sudo easy_install pip
	pip install virtualenv
	make dotfiles
	make packages/install/zerotier
.PHONY: bootstrap

## remove existing dotfile symlinks
cleandotfiles:
	for file in $(DOTFILE_NAMES) ; do if [ -L ~/$$file ];then rm ~/$$file; fi; done
.PHONY: cleandotfiles

## clean and refresh dotfile symlinks
dotfiles: cleandotfiles \
	$(DOTFILES) # iterate our list of dotfiles and ensure they are symlinked
.PHONY: dotfiles

packages/install/zerotier:
	curl https://download.zerotier.com/dist/ZeroTier%20One.pkg --output ~/Downloads/ZeroTierOne.pkg
	sudo installer -pkg ~/Downloads/ZeroTierOne.pkg -target /
.PHONY: packages/install/zerotier

sudo/noprompt:
	echo "$(shell whoami) ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$(shell whoami)
.PHONY: sudo/noprompt

sudo/prompt:
	sudo rm -rf /etc/sudoers.d/$(shell whoami)
.PHONY: sudo/prompt

## clean and install build harness code
update: clean-build-harness
	git pull
	make bootstrap
.PHONY: update

## symlink ~/.dotfile to ./dotfiles/.dotfile
~/.%:
	cd ~ && ln -sv $(current_dir)/dotfiles/$(notdir $@) $@
