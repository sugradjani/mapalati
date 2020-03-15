#!/bin/sh

# on ubuntu, requires gdal-bin package - run 'sudo apt install gdal-bin' to install

# the following line creates two files - 'Volonteri.csv' and 'Potrebna Pomoc.csv'
# NOTE that the second file name was automatically derived from the layer name

SOURCE_MAP="${1:-../data/map.kmz}"
LAYER_NAME="Volonteri.csv"
ogr2ogr -f CSV "${LAYER_NAME}" "${SOURCE_MAP}" -lco GEOMETRY=AS_XYZ

