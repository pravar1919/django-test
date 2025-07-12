run:
	uv run python manage.py runserver
migrations:
	uv run python manage.py makemigrations
migrate:
	uv run python manage.py migrate
test:
	uv run python manage.py test