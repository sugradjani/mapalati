# quick-way wishlist

improvements immediately achievable within the framework of using google docs
  
  - automated sheet sync
  - street names in the shared sheet
  - automated remarker
  - volunteer grading by the support receiver
  - tool that will scan the facebook group feed and extract the information to create map tags
  - auto-remove any layers that are not one of the two predefined layers
  - **TODO: provide more here !!!**
  
## 1. automated sheet sync 
  
The advantage is that the map always stay up to date without requiring manual involvement.
for now, we have the script that does part of the work see **quick-way/process_new_dl.sh**
there shall be a service that synchronizes the google sheet document from the map.
 
## 2. street names in the shared sheet
  
The coordinates in the sheet are not so human readable. they should be street names instead/in addition.

## 3. automated remarker

A service to append remarks to tags with missing information. 
Remarks are appended to the description with \<br\> as a separator. They are enclosed with braces and start with workd 'primedba' (remark) followed by a semicolon.
The following are the possible remarks
- nedostaje link na facebook profil (link to fb profile is missing)
- nedostaje vrsta ponudjene pomoci (missing kind of help provided)
- nedostaje link na facebook profil i vrsta ponudjene pomoci (missing fb profile and kind of help provided)

Example description with remark:

Pomoc u kupovini, šetnja ljubimaca\<br\>(primedba: nedostaje link na facebook profil)

## 4. volunteer grading by the support receiver
 
It provides people who have already provided help with **karma points** so they are considered more reliable to provide more help and in case they will need help, people will have additional motivation to he  lp someone who has already helped.

## 5. write a tool that will scan the facebook group feed and extract the information to create map tags

To ease for people to post their help and needs, we define the following hashtags

- #pomoc
- #zip_<zip_code>

any post containing those hash tags will craete a new volunteer and register it's tag at the center of that zip code.


## 6. auto-remove any layers that are not one of the two predefined layers

In order to automate to some extent the handling of invalid posts, write a service that automatically removes any layers that are not one of the two predefined.
The layer contents will be saved in a separate document for administrators review and removed from the map file.

[back](./README.md) to quick-way README.md
