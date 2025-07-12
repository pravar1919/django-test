run:
	uv run python manage.py runserver
run-prod:
	uv run gunicorn core.wsgi:application
migrations:
	uv run python manage.py makemigrations
migrate:
	uv run python manage.py migrate
test:
	uv run python manage.py test