from aiogram.utils.executor import Executor
from loguru import logger

from app.misc import dp
from app.models import db
from app.services import apscheduler

runner = Executor(dp)


def setup():
    logger.info("Configure executor...")
    db.setup(runner)
    apscheduler.setup(runner)
