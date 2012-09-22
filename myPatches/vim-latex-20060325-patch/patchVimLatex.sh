#!/bin/sh
patch1="add_update_redraw_fix_doubleFolding.patch"
patch2="environment_f5_pause_fix.patch"
curDir=`pwd`
cd ~/.vim/ftplugin/latex-suite/
sudo patch -p0 -i ${curDir}/${patch1}
cd ..
cd ../plugin/
sudo patch -p0 -i ${curDir}/${patch2}
cd $curDir
