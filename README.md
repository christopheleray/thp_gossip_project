# App ruby Gossip Project - THP
### Groupe de Rennes Christophe Leray
**Ruby version: 2.5.1**

___
## Installation

* Download or clone the repository
    `$ git clone https://github.com/christopheleray/thp_gossip_project.git>

* Run the command bundle install to install the necessary gems
    $ bundle install
---
## Database update 

* Update your database structure with the migration command.The database in not uploaded to github, so it is necessary tu run the differents migrations:

    `$ rails db:migrate`

* Add data into your database with the seed file
     `$ rails db:seed`
---
## App test

* Open the rails consol with rails consol command and check if datas have been created by using the following command:

    `$ User.all`
    `$ Gossip.all`
    `$ Comments.all`
    `$ Tag.all`
    `$ Like.all`
    `$ City.all`
    `$ PrivateMessage.all`
    `$ PrivateMessage.find(1).sender`
---
### Diagram Database:</h4>
![DB Diagram](https://github.com/christopheleray/thp_gossip_project/blob/master/erd.pdf)
        

