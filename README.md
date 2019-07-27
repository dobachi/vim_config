# vim_config for my own

## Warning!

These configuration and procedure are for my own, so that they may not be useful for you.

## Requirements

* [dein.vim]

[dein.vim]: https://github.com/Shougo/dein.vim

## How to use this configuraton files

### Clone this repository

```
$ cd
$ mkdir ~/Sources
$ cd ~/Sources
$ git clone https://github.com/dobachi/vim_config.git

```

### Install dein.vim

According to [dein.vim] 's README, install dein.vim.
I installed it to `~/vimfiles/bundles/`

So, the commands that I executed were:

```
$ mkdir -p ~/vimfiles/bundles
$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/vimfiles/installer.sh
$ bash ~/vimfiles/installer.sh ~/vimfiles/bundles
```

This shell script installs dein.vim into the above directory and show an example of the vimrc content.
I modified it to match my environment.
The modified \_vimrc is included in this repository.
Let us assume that this repository are clone into `~/Sources` directory.
You should create symlink to enable \_vimrc.

```
$ ln -s ~/Sources/vim_config/_vimrc ~/_vimrc
```

The above commands are for the Win10 Git Bash environment.
Please modify the command to match your envionment.

In my configuration, some plugin will be installed, so that you should modify the part of \_vimrc to install your favorite plugin.

### Configure CheatSheet

In my configuraion, "Cheat Sheet" plugin will be installed and this plugin requires the configuration file.
This configuration file is included in this repository.
Let's create symlink to enable the configuration.

```
$ ln -s ~/Sources/vim_config/cheatsheet.md ~/.vim/cheatsheet.md
```

### Configure the color

Create a link of the color configuration file.
```
$ mkdir -p ~/.vim/colors
$ ln -s ~/Sources/vim_config/color/vim-hybrid/colors/hybrid.vim ~/.vim/colors/hybrid.vim
```

vim: tw=0
