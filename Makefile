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
	PYTHONPATH=$(shell pwd):${PYTHONPATH} alembic ${args}

migrate:
	PYTHONPATH=$(shell pwd):${PYTHONPATH} alembic upgrade head

migration:
	PYTHONPATH=$(shell pwd):${PYTHONPATH} alembic revision --autogenerate -m "${message}"

downgrade:
	PYTHONPATH=$(shell pwd):${PYTHONPATH} alembic downgrade -1

app:
	python -m app ${args}
