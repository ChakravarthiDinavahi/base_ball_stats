# README

* Base ball stats application: Pagination with backend sort using jquery and pagy gem
* For reading data from http://www.cafeconleche.org/examples/baseball/1998statistics.xml, I have used nokogiri to xml data.
* For displaying minimum number of records per page, I have used pagy gem
* For on demand sorting, I have created my own using javascript

* To run in localmachine,
  1. Clone the repo
  2. Run migrations, after excution of bundle
  3. Run rake db:seed
  4. run rails server
