
- <Leader> : ','

## use YouCompleteMe

1. 通过:PlugInstall成功之后,还需要进行编译才能使用,编译需要：cmake,python3-dev,make等包

    对Ubuntu 16.04： sudo apt install build-essential cmake3 python3-dev

    添加C-like语言的补全,执行：cd ~/.vim/bundle/YouCompleteMe;./install.py
    --clang-completer

    默认补全: python3 install.py


2. C-like语言的语义补全和check，需要有编译数据库

    对于make构建工具,
    安装[bear](https://github.com/rizsotto/Bear),然后在项目构建目录下执行：bear
    make 来生成编译数据库.

3. YouCompleteMe插件需要Vim版本大于7.4以上

## 使用tmux时vim 主题（theme）失效的解决

1. 在.bashrc文件中加入：

    alias tmux="TERM=screen-256color-bce tmux"

    然后执行: source ~/.bashrc

2. 如下代码加入~/.tmux.conf中(如果没有这个文件则创建它):

    set -g default-terminal "screen-256color"

