ror_music_search
================

RoR application to search music results from iTunes API incorporating AngularJS

To run the Application 

1. clone it from github arkhitech/ror_music_search using ssh or http

2. Run bundle install  'bundle install' on command line

3. Install mysql2(default database) and create database using 'rake db:create' 

4. Run migrations using 'rake db:create'

5. To fetch data from iTunes and save it to database for use Run rake task
   with search phrase using the rake command:
   rake musicfeed_sync:fetch_itunes_music_feed['search_phrase']
   
6. start the server and Application is ready to run
