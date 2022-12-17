build:
	docker compose build

up:
	rm -rf tmp/pids/server.pid
	docker compose up

bash:
	docker exec -it workout_tracker-web-1 sh

down:
	docker compose down

test:
	docker exec -ti -e "RAILS_ENV=test" workout_tracker-web-1 sh -c "bin/bundle exec rspec --format documentation"

test-wip:
	docker exec -ti -e "RAILS_ENV=test" workout_tracker-web-1 sh -c "bin/rails db:environment:set RAILS_ENV=test && bin/bundle exec rspec --format documentation --tag wip"

console:
	docker exec -ti -e "RAILS_ENV=test" workout_tracker-web-1 sh -c "bin/rails c"

install:
	docker exec -ti workout_tracker-web-1 sh -c "bin/bundle install"
