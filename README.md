# Laravel Horizon with Docker
This is an example for laravel horizon using docker.
# How to use?
Clone this repository.
```
git clone https://github.com/ar-android/docker-laravel-horizon.git
```
Copy env configuration file.
```
cp code/.env.example code/.env
```
Make sure you have been install docker and docker-compose. Then run this command.
```
docker-compose up -d --build
```
Install dependencies
```
docker-compose run php-fpm composer update
```
Then laravel horizon configuration
```
docker-compose run --rm --no-deps php-fpm php artisan horizon:install
```