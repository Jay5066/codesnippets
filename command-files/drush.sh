
#Applications/MAMP/Library/bin/mysql --host=localhost -uroot -proot 
## Drush Commands ## 

#To turn on JS Aggregation
    drush vset preprocess_js 1 --yes

#To clear all Cache
    drush cc all

#To disable JS Aggregation
   drush vset preprocess_js 0 --yes

#To clear cache of JS and CSS only
   drush cc css+js

#To enable CSS Aggregation
   drush vset preprocess_css 1 --yes

#To disable CSS Aggregation
   drush vset preprocess_css 0 --yes

#---------------------------------------------------------------------------------------