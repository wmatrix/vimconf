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
