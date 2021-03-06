#!/bin/bash

#export MICMACMGR_ROOT=/Applications/MicMacMgrV2.app/
export MICMACMGR_ROOT=/Users/nbellaiche/dev/MicMacMgr/setup/MicMacMgrV2.app/

export APPLICATION_DIR=$MICMACMGR_ROOT/Contents/MacOS
export IGN_DATA=$MICMACMGR_ROOT/Contents/Data
export GDAL_DATA=$IGN_DATA/geodesy/gdal
export PROJ_LIB=$IGN_DATA/geodesy//nad

export GPAO_CLIENT_DIR=/Users/nbellaiche/dev/npm/electron-interface-ign
export SCRIPT_ROOT=$GPAO_CLIENT_DIR/scripts

export DIRECTORY=/Users/nbellaiche/dev/tempo

