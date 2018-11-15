up-build:
	docker-compose up -d --build

up:
	docker-compose up -d

down:
	docker-compose down

open:
	open http://192.168.99.100

tinker:
	docker-compose run php-fpm php artisan tinker

install-dependency:
	docker-compose run php-fpm composer update

install-horizon:
	docker-compose run --rm --no-deps php-fpm composer require laravel/horizon
	docker-compose run --rm --no-deps php-fpm php artisan horizon:install

create-job:
	docker-compose run --rm --no-deps php-fpm php artisan make:job ProcessReport