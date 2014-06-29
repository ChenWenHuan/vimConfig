#!/bin/sh
#ctags -R --c-kinds=+px --fields=+Sia
ctags -R --c++-kinds=+px --fields=+iaS --extra=+q .
cscope -Rqkb
