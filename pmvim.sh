#!/bin/bash

## default path is current workdirectory,but you can define path to filter some directory
PROJECT_PATH="`pwd`"
cscope_file="cscope.files"

# now only c/c++ source files are cscoped
for path in $PROJECT_PATH;do
    find $path -name \*.c -o -name \*.cpp -o -name \*.h -o -name \*.hh > $cscope_file
done

#cscope -bRq -i$cscope_file 2&>/dev/null
cscope -bRq -i$cscope_file $PROJECT_PATH 2&>/dev/null

#ctags -R * 2&>/dev/null
ctags -R --fields=+lS $PROJECT_PATH 2&>/dev/null

##### This is used for lookupfile.vim plugin,but we don't use it,we use ctrlp.vim plugin #####
#lookup_file="$PMVIM_PATH/lookup.files"
#echo "!_TAG_FILE_SORTED 2   /2=foldcase/" > $lookup_file
#find  $PROJECT_PATH \( -name .git -o -name .svn -o -path ./classes \) -prune -o -not -iregex '.*\.\(jar\|gif\|jpg\|class\|exe\|dll\|pdd\|sw[op]\|xls\|doc\|pdf\|zip\|tar\|ico\|ear\|war\|dat\).*' -type f -printf "%f\t%p\t1\n"| sort -f >> $lookup_file

