#!/bin/bash

# echo "init env local"

#export PATH='/c/Program Files/Python38':$PATH
#export PATH='/c/Program Files/Python38/Scripts':$PATH
#export PATH='/c/Program Files (x86)/Microsoft Visual Studio 14.0/VC/bin':$PATH
#export PATH='/c/Qt/Qt5.11.1/Tools/mingw530_32/bin':$PATH
export PATH='/d/Program Files/mingw530_32/bin':$PATH
#export PATH='/c/Qt/Qt5.11.1/5.11.1/msvc2015_64/bin':$PATH
#export PATH='/C/Go/bin':$PATH
export PATH='/d/Program Files/Go/bin':$PATH
export PATH='/d/Program Files/NodeJs':$PATH
export PATH='/d/Program Files/Global/bin':$PATH
export PATH='/d/Program Files/CMake/bin':$PATH
#export PATH='/d/Program Files/Ncat':$PATH
export PATH='/d/Program Files/Emacs/bin':$PATH
export PATH='/c/Program Files/qemu':$PATH

export BOOST_ROOT='/e/SDK/Boost'
#export BOOST_INCLUDEDIR='/e/SDK/boost_1_69_0'
#export BOOST_LIBRARYDIR='/e/SDK/boost_1_69_0/stage/x64/lib'
#export BOOST_LIBRARY_DIR='/e/SDK/boost_1_69_0/stage/x64/lib'

#export LIBEVENT_INCLUDEDIR='/e/SDK/libevent-2.1.10-stable/include'
#export LIBEVENT_LIBRARYDIR='/e/SDK/libevent-2.1.10-stable/build64/lib'
export LIBEVENT_ROOT='/e/SDK/libevent-2.1.10-stable'

function sass() {
    ~/.local/dart-sass/sass.bat $*
}
