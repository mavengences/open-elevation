#!/usr/bin/env bash

OUTDIR="/code/data"
if [ ! -e $OUTDIR ] ; then
    echo $OUTDIR does not exist!
fi

CUR_DIR=$(pwd)

set -eu

cd $OUTDIR
#../download-srtm-data.sh
../create-tiles.sh /code/data/SRTM_NE_250m_TIF/SRTM_NE_250m.tif 10 10
../create-tiles.sh /code/data/SRTM_SE_250m_TIF/SRTM_SE_250m.tif 10 10
../create-tiles.sh /code/data/SRTM_W_250m_TIF/SRTM_W_250m.tif 10 20
rm -rf /code/data/SRTM_NE_250m_TIF/SRTM_NE_250m.tif /code/data/SRTM_SE_250m_TIF/SRTM_SE_250m.tif /code/data/SRTM_W_250m_TIF/SRTM_W_250m.tif *.rar

cd $CUR_DIR
