# quck-way implementation

In order to create an immediate response, a google drive map document has been created and shared with permissions for everyone to write and read.

The link had been shared though the dedicated facebook group https://www.facebook.com/groups/SugradjaniSrbije/about/ .

The folder quick-way in the repo root folder contains the scripts that help maintain this implementation.

To see where you can help, see the [whishlish](./WISHLIST.md)

# tools

the tools are in the quick-way bin folder

- kmz2csv.sh
- process_new_dl.sh

## The kmz2csv.sh script

small script to extract the information from the layers - 'Volonteri' (volunteers) and 'Potrebna Pomoc' (help needed).

this script takes two arguments:
- **first** argument is the file name of the kmz map that is exported using google mymaps 'Export' map feature. 
- **second** argument is the name of the CSV file to store the first layer to.

Note that the second layer is not passed as a parameter. The second layer 'Potrebna Pomoc' will be saved in the same
folder as the first layer and in a csv file named after the layer 'Potrebna Pomoc.csv'.

## The process_new_dl.sh script

Assuming the downloaded kmz file is in ~/Downloads folder, and that the downloaded file name is 'Pomoć sugrađanima u karantinu - Srbija.kmz', this script processes the file to create csv documents suitable for import to google sheets.

Uses an environment variable named **MQW_HOME_FOLDER** as the home folder for the **quick-way** tools - shall be set to quick-way subfolder.
The temporary and final data files for upload to google docs are saved in that folder. The final data file names are as follows:
- 'Volonteri.csv'
- 'Potrebna Pomoc.csv'

[back](../README.md) to project README.md.
