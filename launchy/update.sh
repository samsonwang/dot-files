#!/bin/bash

SRC_PATH="/d/GitHub/LaunchyQt/Releasex64"
DST_PATH="/d/Program Files/Launchy"

cp -f "${SRC_PATH}/Launchy.exe" "${DST_PATH}/"
cp -f "${SRC_PATH}/Launchy.dll" "${DST_PATH}/"
cp -f "${SRC_PATH}/PluginPy.dll" "${DST_PATH}/"
cp -f "${SRC_PATH}/python/launchy.pyd" "${DST_PATH}/python"
cp -f "${SRC_PATH}/python/launchy_util.py" "${DST_PATH}/python"
cp -f "${SRC_PATH}/python/pluginconf.py" "${DST_PATH}/python"

update_plugin() {
    DST_PLUGIN_PATH="${DST_PATH}/plugins/$1"
    if [ ! -d "$DST_PLUGIN_PATH" ]; then
        mkdir -p "$DST_PLUGIN_PATH"
    fi
    cp -f "${SRC_PATH}/plugins/$1/$1.dll" "${DST_PLUGIN_PATH}/$1.dll"
#    cp -f "${SRC_PATH}/plugins/$1/*.png" $DST_PLUGIN_PATH
}

update_plugin Calcy
update_plugin Tasky
update_plugin Verby
