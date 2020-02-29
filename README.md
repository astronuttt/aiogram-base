# aiogram-base
a basic telegram bot with basic options with aiogram. for base of new projects.

- all necessary packages are in requirements.txt
- migrations in migrations
- Application in app

## installing:
place your database and bot configurations in app/config.py

use app/config.py.sample for example.
## running:
`make migrate`

`make migration`

running in polling mode (app/__main__.py):

`python -m app polling`

also in autoreload mode:

`python -m app polling` , `aiohttp_autoreload` must be installed.


