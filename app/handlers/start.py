from aiogram import types
from aiogram.dispatcher.filters import CommandStart
from loguru import logger

from app.misc import dp
from app.models.user import User


@dp.message_handler(CommandStart())
async def cmd_start(message: types.Message, user: User):
    await message.answer(f"hello user {user.id}, welcome to the Bot!")
    await user.update(start_conversation=True).apply()


@dp.errors_handler()
async def error_handler(update: types.Update, exception: Exception):
    try:
        raise exception
    except Exception as e:
        logger.exception("Cause exception {e} in update {update}", e=e, update=update)
