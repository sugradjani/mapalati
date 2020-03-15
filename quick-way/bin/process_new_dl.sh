#!/bin/sh

# after manually downloading the exported kmz file

# mapalati quick way home dir, default to current dir
MQW_HOME_DIR=${MQW_HOME_DIR:-./}
DATA_DIR=${MQW_HOME_DIR}data/
BIN_DIR=${MQW_HOME_DIR}bin/
DOWNLOADS_DIR=~/Downloads/
DOWNLOAD_FILE="${DOWNLOADS_DIR}Pomoć sugrađanima u karantinu - Srbija.kmz"
MAP_FILE="${DATA_DIR}map.kmz"
KMZ_TO_CSV_COMMAND="${BIN_DIR}kmz2csv.sh"
CSV_VOLUNTEERS_FILENAME='Volonteri.csv'
CSV_VOLUNTEERS_FULLNAME="${DATA_DIR}${CSV_VOLUNTEERS_FILENAME}"
CSV_VOLUNTEERS_TEMP_FULLNAME="${DATA_DIR}${CSV_VOLUNTEERS_FILENAME}.tmp"
CSV_HELP_NEEDED_FILENAME='Potrebna Pomoc.csv'
CSV_HELP_NEEDED_FULLNAME="${DATA_DIR}${CSV_HELP_NEEDED_FILENAME}"
CSV_HELP_NEEDED_TEMP_FULLNAME="${DATA_DIR}${CSV_HELP_NEEDED_FILENAME}.tmp"

cd "${MQW_HOME_DIR}"
cp "${DOWNLOAD_FILE}" "${MAP_FILE}"

# extract layers data from manually exported kmz file
"${KMZ_TO_CSV_COMMAND}" "${MAP_FILE}" "${CSV_VOLUNTEERS_FULLNAME}" 

# quote all text and convert <br> to new lines
mv "${CSV_VOLUNTEERS_FULLNAME}" "${CSV_VOLUNTEERS_TEMP_FULLNAME}"
csvformat -U 1 "${CSV_VOLUNTEERS_TEMP_FULLNAME}" | sed "s/<br>/\n/g" > "${CSV_VOLUNTEERS_FULLNAME}"
mv "${CSV_HELP_NEEDED_FULLNAME}" "${CSV_HELP_NEEDED_TEMP_FULLNAME}"
csvformat -U 1 "${CSV_HELP_NEEDED_TEMP_FULLNAME}" | sed "s/<br>/\n/g" > "${CSV_HELP_NEEDED_FULLNAME}"
rm "${CSV_VOLUNTEERS_TEMP_FULLNAME}" "${CSV_HELP_NEEDED_TEMP_FULLNAME}"

