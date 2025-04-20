PROJECT_ROOT=/opt poetry run alembic upgrade head
PROJECT_ROOT=/opt poetry run uvicorn main:app --host 0.0.0.0 --port 8000 --log-level 'debug' --workers=1