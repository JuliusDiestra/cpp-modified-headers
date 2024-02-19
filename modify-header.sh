#!/bin/sh

GCC_VERSION=9

cp -R /usr/include/c++ .

cd c++/$GCC_VERSION

find . -type f | xargs sed -i 's/namespace std _GLIBCXX_VISIBILITY(default)/namespace std/'

cd ../..

ctags -f gcc_${GCC_VERSION}_tags -R --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -I _GLIBCXX_NOEXCEPT c++/$GCC_VERSION

