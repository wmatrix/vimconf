## 配置vimrc

1. 链接.vimrc: `ln -s ~/vimconf/.vimrc ~/.vimrc`
    - <Leader> : ','

2. 链接.vimrc.last(自定义的一些配置): `ln -s ~/vimconf/.vimrc.last ~/.vimrc.last`

## use YouCompleteMe

1. 通过:PlugInstall成功之后,还需要进行编译才能使用,编译需要：cmake,python3-dev,make等包

    对Ubuntu 16.04： `sudo apt install build-essential cmake3 python3-dev`

    在进行install之前需要先git submodule补全子模块：

    `cd ~/.vim/bundle/YouComleteMe/third_party/ycmd/third_party;git submodule
    update --init --recursive`

    由于墙的存在,golang/tools的下载会失败,所以可能需要单独下载具体的库(检查目录
	    为空), 如果为空，则类似执行: `git submodule update cregex`


    添加C-like语言的补全,执行：

    `cd ~/.vim/bundle/YouCompleteMe;./install.py --clang-completer`

    默认补全: 

    `cd ~/.vim/bundle/YouCompleteMe;./install.py`

    Go语言补全添加: ./install.py --go-completer

    添加所有语言补全: ./install.py --all

    完整的语言补全参考Gitub文档。


2. C-like语言的语义补全和check，需要有编译数据库

    对于make构建工具,
    安装[bear](https://github.com/rizsotto/Bear),然后在项目构建目录下执行：bear
    make 来生成编译数据库.

3. YouCompleteMe插件需要Vim版本大于7.4以上 , Ubuntu 18.04上面的版本为8.0.


4. 在vim启动时,如果提示如下错误:

    The ycmd server SHUT DOWN (restart with ':YcmRestartServer'). Unexpected exit code 1.

    可以参考issue: [2831-issue](https://github.com/ycm-core/YouCompleteMe/issues/2831)

    手动启动Ycmd Server检查错误原因:

    ```
    cd ~/.vim/bundle/YouCompleteMe/third/ycmd
    cp ycmd/default_settings.json .
    python ycmd --options_file default_settings.json
    ```

## 使用tmux时vim 主题（theme）失效的解决

1. 在.bashrc文件中加入：

    alias tmux="TERM=screen-256color-bce tmux"

    然后执行: source ~/.bashrc

2. 如下代码加入~/.tmux.conf中(如果没有这个文件则创建它):

    set -g default-terminal "screen-256color"

