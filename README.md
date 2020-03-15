# mapalati

Open source project with tools for sharing information between people who provide help and people who need it - built for need of Serbia in response to the covid-19.

Although this is a project for supporting local Serbian people, are aware many other communities may need similar tools, so we opt-out for english language. 

Our objective is to learn from others and adapt it for use asap. We are inspired and want to keep up with the growing collection of similar projects https://github.com/WeileiZeng/Open-Source-COVID-19.

## a quick and dirty way to do it

In order to create an immediate response, a google drive map document has been created and shared with permissions for everyone to write and read.

The link had been shared though the dedicated facebook group https://www.facebook.com/groups/SugradjaniSrbije/about/ .

Below is a short pro at contra analysis for this solution option:

Pro:

- this is an immediately available method
- it provides for high availability 
- it costs $0 usd
- as everyone who edits the document leaves his facebook profile and his google account, this provides better basis for evaluation of the other person identity.

Contra:

- data entry is not easy especially not for elderly people
- no automated sheet sync 
- no street names in the shared sheet

The folder **quick-way** in the repo root folder contains the scripts that help maintain this implementation.

## better ways to do it

There are many better ways to do it. Below we discuss the options:

short term improvements
- improvements immediately achievable within the framework of using google docs
- improvements immediately achievable by using other publicly available infrastructure
- improvements immediately achievable by rolling our own app specifically crafted for this purpose

long term improvements
- we do not think about that now ;)

### improvements immediately achievable within the framework of using google docs

- automated sheet sync 
- street names in the shared sheet
- volunteer grading by the support receiver. 
- **TODO: provide more here !!!**

#### automated sheet sync 

The advantage is that the map always stay up to date without requiring manual involvement. 
for now, we have the script that does part of the work see **quick-way/kmz2csv.sh**
there shall be a service that synchronizes the google sheet document from the map.


#### street names in the shared sheet

The coordinates in the sheet are not so human readable. they should be street names instead. 

#### volunteer grading by the support receiver

It provides people who have already provided help with **karma points** so they are considered more reliable to provide more help and in case they will need help, people will have additional motivation to help someone who has already helped. 

### improvements immediately achievable by using other publicly available infrastructure

- starting a moderated word-press with relevant information resources 
- **TODO: provide more here !!!**

#### moderated word-press/github static html website with relevant information resources 

Here we could deliver content such as:

- advice on what to do in a quarantine like 
    - play games, 
    - visit virtual museums, 
    - play music with neighbors at same hour 

### improvements immediately achievable by rolling our own app specifically crafted for this purpose


