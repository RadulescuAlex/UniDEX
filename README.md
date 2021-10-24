# UniDEX

 - An APP designed to improve the learning system

## Team - github accounts:

- [Suciu Tudor](https://github.com/Suciu532)
- [Alex Radulescu](https://github.com/RadulescuAlex)

## Live Preview

- [Demo](https://radulescualex.github.io/expert-aplicatii/)

## Structure

- HTML/CSS for main layout
- Js to generate words&explications
- SQL database used for storing words&explications
- static json files used as database for live preview

## Content
- CRD operations:
    - Create new words&explications 
    - Read wrods&explications from db
    - Delete words&explications
- Other operetions: 
    - Search words
    - Open modal to add data

## Setup

- git clone https://github.com/RadulescuAlex/UniDEX
- npm install

## Data base integratiom
- Donwload & install XAMPP
- Run Xampp -> Start Apache & MySQL
- Go to browser -> localhost -> phpMyAdmin
- Create new db & name it "expert-info" (utf8_general_ci)
- Go to "import" tab -> select expert_info.sql from project folder.
- Open terminal -> npm install 

## Running app
- npm run devstart 
- Open http://localhost3001/


