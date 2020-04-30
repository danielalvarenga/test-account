# TEST ACCOUNT

* Create docker image

`./build.sh`

* Database creation

`docker-compose run --rm web rails db:setup`

* Database update

`docker-compose run --rm web rails db:migrate`

* Start application

`docker-compose up`

* How to run the test suite

`docker-compose run --rm web rspec`

* Access application folder inside container

`docker-compose run --rm web bash`

* Finalize application containers

`docker-compose down`
