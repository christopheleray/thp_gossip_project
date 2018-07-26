<!DOCTYPE html>
<html>
<body>
  <div>
  <h1>App ruby Gossip Project - THP</h1>
    <h2>Groupe de Rennes Christophe Leray</h2>
      <h3>Ruby version: 2.5.1</h3>
   <h2>How to install and test?</h2>
      <h4>Download or clone the repository</h4>
        <code>$ git clone https://github.com/christopheleray/thp_gossip_project.git</code>
      <h4>Run the command bundle install to install the necessary gems</h4>
        <code>$ bundle install</code>
      <h4>Update your database structure with the migration command.The database in not uploaded to github, so it is necessary tu run the differents migrations:</h4>
        <code>$ rails db:migrate</code> 
      <h4>Add data into your database with the seed file:</h4>
        <code>$ rails db:seed</code>
      <h4>Open the rails consol with rails consol command and check if datas have been created by using the following command:</h4>
        <code>User.all</code>
        <code>Gossip.all</code>
        <code>Comments.all</code>
        <code>Tag.all</code>
        <code>Like.all</code>
        <code>City.all</code>
        <code>PrivateMessage.all</code>
        <code>PrivateMessage.find(1).sender</code>
      </div>
</body>
</html>
