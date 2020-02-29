tail := 200
PYTHONPATH := $(shell pwd):${PYTHONPATH}

PROJECT := aiogram_bot
LOCALES_DOMAIN := bot
LOCALES_DIR := locales
VERSION := 0.1
PIPENV_VERBOSITY := -1


default:help

help:
	@echo "aiogram bot"


alembic:
	PYTHONPATH=$(shell pwd):${PYTHONPATH} pipenv run alembic ${args}

migrate:
	PYTHONPATH=$(shell pwd):${PYTHONPATH} pipenv run alembic upgrade head

migration:
	PYTHONPATH=$(shell pwd):${PYTHONPATH} pipenv run alembic revision --autogenerate -m "${message}"

downgrade:
	PYTHONPATH=$(shell pwd):${PYTHONPATH} pipenv run alembic downgrade -1

app:
	pipenv run python -m app ${args}

